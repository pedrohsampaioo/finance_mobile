import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/assets/app_svg_path.dart';
import '../../core/theme/app_theme.dart';

class NavigatorBarSettings {
  static BottomNavigationBar configured({
    @required int currentIndex,
    @required void Function(int) onTap,
  }) =>
      BottomNavigationBar(
        selectedItemColor: AppColors.darkBlue,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.background,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
      );

  static List<BottomNavigationBarItem> get items => <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          activeIcon: SvgPicture.asset(
            AppSvgPath.homeBottomApp,
            height: 20,
            width: 20,
            color: AppColors.darkBlue,
          ),
          title: const SizedBox.shrink(),
          icon: SvgPicture.asset(
            AppSvgPath.homeBottomApp,
            height: 20,
            width: 20,
            color: AppColors.textSecondary,
          ),
        ),
        BottomNavigationBarItem(
          title: const SizedBox.shrink(),
          icon: SvgPicture.asset(
            AppSvgPath.cardBottomApp,
            height: 20,
            width: 20,
            color: AppColors.textSecondary,
          ),
          activeIcon: SvgPicture.asset(
            AppSvgPath.cardBottomApp,
            height: 20,
            width: 20,
            color: AppColors.darkBlue,
          ),
        ),
        BottomNavigationBarItem(
          title: const SizedBox.shrink(),
          icon: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(
              AppSvgPath.plusBottomApp,
              height: 12,
              width: 12,
              color: Colors.white,
            ),
          ),
        ),
        BottomNavigationBarItem(
          title: const SizedBox.shrink(),
          icon: SvgPicture.asset(
            AppSvgPath.moneyBottomApp,
            height: 20,
            width: 20,
            color: AppColors.textSecondary,
          ),
          activeIcon: SvgPicture.asset(
            AppSvgPath.moneyBottomApp,
            height: 20,
            width: 20,
            color: AppColors.darkBlue,
          ),
        ),
        BottomNavigationBarItem(
          title: const SizedBox.shrink(),
          icon: SvgPicture.asset(
            AppSvgPath.profileBottomApp,
            height: 20,
            width: 20,
            color: AppColors.textSecondary,
          ),
          activeIcon: SvgPicture.asset(
            AppSvgPath.profileBottomApp,
            height: 20,
            width: 20,
            color: AppColors.darkBlue,
          ),
        ),
      ];
}
