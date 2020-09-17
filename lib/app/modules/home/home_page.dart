import 'package:flutter/material.dart';

import '../../core/theme/app_theme.dart';
import '../../shared/utils/navigator_bar_settings.dart';
import 'components/overview_region.dart';
import 'widgets/personal_info_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 24),
                PersonalInfoWidget(
                  imageUrl:
                      'https://lifestyle.uai.com.br/wp-content/uploads/sites/9/2019/12/46.jpg',
                  name: 'Hira Riaz',
                  career: 'UX/UI Designer',
                  expenses: 8900,
                  income: 5500,
                  loan: 890,
                ),
                const SizedBox(height: 32),
                OverviewRegion(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigatorBarSettings.configured(
        currentIndex: 0,
        onTap: null,
      ),
    );
  }
}
