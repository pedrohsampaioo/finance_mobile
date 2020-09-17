import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const PrimaryButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      padding: const EdgeInsets.all(12),
      color: AppColors.darkBlue,
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTypography.bodySemiBold.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
