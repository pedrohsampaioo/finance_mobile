import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class TextWithActionWidget extends StatelessWidget {
  final VoidCallback action;
  final String title;

  const TextWithActionWidget({
    Key key,
    @required this.action,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: action,
      child: Text(
        title,
        style: AppTypography.bodySmallMedium.copyWith(
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
