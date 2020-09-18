import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/theme/app_theme.dart';
import '../../shared/utils/navigator_bar_settings.dart';
import 'components/overview_region.dart';
import 'cubits/transaction/transaction_cubit.dart';
import 'cubits/user/user_cubit.dart';
import 'widgets/personal_info_widget.dart';
import 'widgets/placeholder_card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _transactionCubit = Modular.get<TransactionCubit>();

  final _userCubit = Modular.get<UserCubit>();

  @override
  void initState() {
    super.initState();
    _refreshPage();
  }

  Future<void> _refreshPage() async {
    await _transactionCubit.fetchAll();
    await _userCubit.fetchInformation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async => await _refreshPage(),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 24),
                    _buildPersonalInformation(),
                    const SizedBox(height: 32),
                    OverviewRegion(),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigatorBarSettings.configured(
        currentIndex: 0,
        onTap: null,
      ),
    );
  }

  Widget _buildPersonalInformation() {
    return BlocBuilder<UserCubit, UserState>(
      cubit: _userCubit,
      builder: (_, state) {
        return AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          transitionBuilder: (widget, animation) {
            return ScaleTransition(
              child: widget,
              scale: animation,
            );
          },
          child: state.map<Widget>(
            started: (_) => const SizedBox.shrink(),
            loadInProgress: (_) => PlaceholderCardWidget(
              key: Key('user_load_in_progress'),
              child: Center(child: CircularProgressIndicator()),
            ),
            loadSuccess: (data) => PersonalInfoWidget(
              key: Key('user_load_success'),
              imageUrl: data.user.imageUrl,
              name: data.user.name,
              career: data.user.career,
              expenses: data.user.expenses,
              income: data.user.income,
              loan: data.user.loan,
            ),
            loadFailure: (_) => PlaceholderCardWidget(
              key: Key('user_load_failure'),
              child: Center(
                child: Text(
                  'Algum erro ocorreu ao obter as informações '
                  'do usuário!',
                  textAlign: TextAlign.center,
                  style: AppTypography.bodyLargeMedium.copyWith(
                    color: AppColors.darkBlue,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
