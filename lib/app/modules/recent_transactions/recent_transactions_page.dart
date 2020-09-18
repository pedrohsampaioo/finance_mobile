import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/assets/app_svg_path.dart';
import '../../core/theme/app_theme.dart';
import '../../shared/utils/mocks.dart';
import '../../shared/widgets/primary_button_widget.dart';
import 'components/today_section.dart';
import 'widgets/filter_widget.dart';
import 'widgets/payment_connections_widget.dart';

class RecentTransactionsPage extends StatefulWidget {
  @override
  _RecentTransactionsPageState createState() => _RecentTransactionsPageState();
}

class _RecentTransactionsPageState extends State<RecentTransactionsPage> {
  int _selectedLabel = 0;

  void _handleSelectedLabel(int current) {
    setState(() => _selectedLabel = current);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              _buildIconsHeader(),
              const SizedBox(height: 32),
              _buildTextsHeader(),
              const SizedBox(height: 16),
              FilterWidget(
                selectedLabel: _selectedLabel,
                onChanged: _handleSelectedLabel,
                labels: Mocks.recentTransactionsLabels,
              ),
              _buildTodaySection(),
              const SizedBox(height: 32),
              _buildConnections(),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: PrimaryButtonWidget(
                  title: 'See Details',
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTodaySection() {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      transitionBuilder: (widget, animation) {
        return ScaleTransition(
          child: widget,
          scale: animation,
        );
      },
      child: _selectedLabel == 0 ? TodaySection() : const SizedBox.shrink(),
    );
  }

  Widget _buildConnections() {
    return LayoutBuilder(
      builder: (_, constraints) {
        return PaymentConnectionsWidget(
          connectionsImageUrl: Mocks.connectionsImageUrl,
          profileImageUrl: Mocks.personalImageUrl,
          height: constraints.maxWidth * 2 / 3,
          width: constraints.maxWidth * 2 / 3,
        );
      },
    );
  }

  Widget _buildIconsHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => Navigator.pop(context),
            child: SvgPicture.asset(
              AppSvgPath.back,
              color: AppColors.black,
              height: 20,
              width: 20,
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: SvgPicture.asset(
              AppSvgPath.search,
              color: AppColors.black,
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextsHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Recent Transactions',
            style: AppTypography.heading5.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          Text(
            'See all',
            style: AppTypography.bodyMedium.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
