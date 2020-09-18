import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import '../../../shared/utils/handle_date.dart';
import '../../../shared/widgets/composites/transaction_card/i_transaction_card_composite.dart';

class OverviewRegion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildHeader(),
        const SizedBox(height: 16),
        GeneralTransactionCard(
          iconPath: AppSvgPath.arrowDown,
          subtitle: 'Sending Payment to Clients',
          title: 'Sent',
          value: 150,
        ).render(),
        const SizedBox(height: 16),
        GeneralTransactionCard(
          iconPath: AppSvgPath.arrowDown,
          subtitle: 'Sending Payment to Clients',
          title: 'Sent',
          value: 150,
        ).render()
      ],
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
