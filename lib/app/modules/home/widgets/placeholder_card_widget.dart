import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class PlaceholderCardWidget extends StatelessWidget {
  final Widget child;

  const PlaceholderCardWidget({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: child,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [AppTheme.boxShadow],
      ),
    );
  }
}
