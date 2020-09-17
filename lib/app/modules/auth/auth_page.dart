import 'package:flutter/material.dart';

import '../../core/assets/app_svg_path.dart';
import '../../core/theme/app_theme.dart';
import '../../shared/utils/handle_keyboard.dart';
import '../../shared/widgets/primary_button_widget.dart';
import 'widgets/custom_text_field_widget.dart';
import 'widgets/text_with_action_widget.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => HandleKeyboard.hide(context),
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 48),
                CustomTextFieldWidget(
                  label: 'Email Address',
                  prefixSvgPath: AppSvgPath.letter,
                  placeHolder: 'example@contato.com',
                ),
                const SizedBox(height: 32),
                CustomTextFieldWidget(
                  label: 'Password',
                  prefixSvgPath: AppSvgPath.padlock,
                  obscureText: true,
                ),
                const SizedBox(height: 48),
                PrimaryButtonWidget(
                  onPressed: () {},
                  title: 'Login',
                ),
                const SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextWithActionWidget(
                      title: 'Signup',
                      action: () {},
                    ),
                    TextWithActionWidget(
                      title: 'Forgot Password?',
                      action: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
