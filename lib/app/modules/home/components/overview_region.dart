import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/utils/handle_date.dart';
import '../../../shared/widgets/composites/transaction_card/i_transaction_card_composite.dart';
import '../cubits/transaction/transaction_cubit.dart';

class OverviewRegion extends StatelessWidget {
  final _transactionCubit = Modular.get<TransactionCubit>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        _buildTransactions(),
      ],
    );
  }

  Widget _buildTransactions() {
    return BlocBuilder<TransactionCubit, TransactionState>(
      cubit: _transactionCubit,
      builder: (_, state) {
        return AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: state.map<Widget>(
            started: (_) => const SizedBox.shrink(),
            loadInProgress: (_) => Center(
              key: Key('transaction_load_in_progress'),
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (data) => Column(
              key: Key('transaction_load_success'),
              children: data.transactions
                  .map<Widget>(
                    (transaction) => Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GeneralTransactionCard(
                        iconPath: transaction.svgPath,
                        subtitle: transaction.subtitle,
                        title: transaction.title,
                        value: transaction.value,
                      ).render(),
                    ),
                  )
                  .toList(),
            ),
            loadFailure: (_) => Center(
              key: Key('transaction_load_failure'),
              child: Text(
                'Algum erro ocorreu ao obter as transações! ',
                textAlign: TextAlign.center,
                style: AppTypography.bodyLargeMedium.copyWith(
                  color: AppColors.darkBlue,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Overview',
          style: AppTypography.heading5.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          AppSvgPath.bell,
          height: 16,
          width: 16,
        ),
        Expanded(child: SizedBox.shrink()),
        Text(
          HandleDate.format(DateTime.now()),
          style: AppTypography.bodySmallMedium.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
