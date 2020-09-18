import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String label;
  final String prefixSvgPath;
  final String placeHolder;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextFieldWidget({
    Key key,
    @required this.label,
    @required this.prefixSvgPath,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.placeHolder,
  })  : assert(label != null),
        assert(prefixSvgPath != null),
        super(key: key);

  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool _multableObscure;
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _multableObscure = widget.obscureText;
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleObscureText() {
    setState(() => _multableObscure = !_multableObscure);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _focusNode.requestFocus(),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [AppTheme.boxShadow],
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildLabel(),
            const SizedBox(height: 8),
            _buildTextField(),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel() {
    return Text(
      widget.label,
      textAlign: TextAlign.start,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.bodySmallSemiBold.copyWith(
        color: AppColors.textSecondary,
      ),
    );
  }

  Widget _buildTextField() {
    return CupertinoTextField(
      keyboardType: widget.keyboardType,
      focusNode: _focusNode,
      placeholder: widget.placeHolder,
      placeholderStyle: AppTypography.bodySmallRegular.copyWith(
        color: AppColors.textLight,
      ),
      style: AppTypography.bodySmallRegular.copyWith(
        color: AppColors.black,
      ),
      obscureText: _multableObscure,
      suffixMode: widget.obscureText
          ? OverlayVisibilityMode.always
          : OverlayVisibilityMode.never,
      suffix: GestureDetector(
        onTap: _handleObscureText,
        behavior: HitTestBehavior.opaque,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (widget, animation) {
            return ScaleTransition(
              child: widget,
              scale: animation,
            );
          },
          child: _multableObscure
              ? SvgPicture.asset(
                  AppSvgPath.openEye,
                  color: AppColors.black,
                  height: 16,
                  width: 16,
                  key: Key('open_eye'),
                )
              : SvgPicture.asset(
                  AppSvgPath.closedEye,
                  color: AppColors.black,
                  height: 20,
                  width: 20,
                  key: Key('closed_eye'),
                ),
        ),
      ),
      prefix: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            widget.prefixSvgPath,
            color: AppColors.black,
            height: 16,
            width: 16,
          ),
        ),
      ),
      padding: const EdgeInsets.all(0),
      cursorColor: Colors.black87,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0,
          color: Colors.transparent,
        ),
      ),
    );
  }
}
