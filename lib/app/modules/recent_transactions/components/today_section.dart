import 'package:flutter/material.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/widgets/composites/transaction_card/i_transaction_card_composite.dart';

class TodaySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Today',
            style: AppTypography.headingSemiBold6.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          const SizedBox(height: 16),
          RecentTransactionCard(
            iconPath: AppSvgPath.letterTransaction,
            subtitle: 'Payment',
            title: 'Payment from Andrea',
            value: 30,
          ).render(),
        ],
      ),
    );
  }
}
