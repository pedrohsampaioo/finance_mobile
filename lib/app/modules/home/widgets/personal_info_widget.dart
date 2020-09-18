import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/app_svg_path.dart';
import '../../../core/theme/app_theme.dart';
import 'money_info_widget.dart';

class PersonalInfoWidget extends StatelessWidget {
  final String name;
  final String career;
  final int income;
  final int expenses;
  final int loan;
  final String imageUrl;

  const PersonalInfoWidget({
    Key key,
    @required this.name,
    @required this.career,
    @required this.income,
    @required this.expenses,
    @required this.loan,
    @required this.imageUrl,
  })  : assert(name != null),
        assert(career != null),
        assert(imageUrl != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [AppTheme.boxShadow],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIconsHeader(context),
          const SizedBox(height: 8),
          CircleAvatar(
            radius: 48,
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: AppColors.lightGrey,
          ),
          const SizedBox(height: 8),
          _buildTextsPersonalInfo(),
          const SizedBox(height: 32),
          MoneyInfoWidget(
            expenses: expenses,
            income: income,
            loan: loan,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildIconsHeader(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(context, '/recent_transactions'),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              AppSvgPath.options,
              color: AppColors.darkBlue,
              height: 4,
              width: 4,
            ),
          ),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              AppSvgPath.dotted,
              color: AppColors.darkBlue,
              height: 8,
              width: 8,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextsPersonalInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          textAlign: TextAlign.center,
          style: AppTypography.heading5.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          career,
          textAlign: TextAlign.center,
          style: AppTypography.caption.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
