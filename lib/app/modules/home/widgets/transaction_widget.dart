import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/app_theme.dart';

class TransactionWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final int value;
  final String iconPath;

  const TransactionWidget({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.value,
    @required this.iconPath,
  })  : assert(title != null),
        assert(subtitle != null),
        assert(value != null),
        assert(iconPath != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [AppTheme.boxShadow],
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildIcon(),
          const SizedBox(width: 16),
          Expanded(child: _buildTextsInfo()),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: SvgPicture.asset(
        iconPath,
        color: AppColors.black,
        height: 16,
        width: 16,
      ),
    );
  }

  Widget _buildTextsInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTypography.bodySmallBold.copyWith(
            color: AppColors.black,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                subtitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.caption.copyWith(
                  color: AppColors.textLight,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '\$$value',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.bodySmallSemiBold.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
