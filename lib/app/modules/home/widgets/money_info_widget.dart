import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

class MoneyInfoWidget extends StatelessWidget {
  final int income;
  final int expenses;
  final int loan;

  const MoneyInfoWidget({
    Key key,
    @required this.income,
    @required this.expenses,
    @required this.loan,
  })  : assert(income != null),
        assert(expenses != null),
        assert(loan != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildMoneyInfo(
          title: 'Income',
          value: income,
          hasShape: true,
        ),
        const SizedBox(width: 16),
        _buildMoneyInfo(
          title: 'Expenses',
          value: expenses,
          hasShape: true,
        ),
        const SizedBox(width: 16),
        _buildMoneyInfo(
          title: 'Loan',
          value: loan,
        ),
      ],
    );
  }

  Widget _buildMoneyInfo({
    @required int value,
    @required String title,
    bool hasShape = false,
  }) {
    final borderlessWidget = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '\$$value',
          style: AppTypography.bodyRegular.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: AppTypography.caption.copyWith(
            color: AppColors.black,
          ),
        ),
      ],
    );
    if (hasShape) {
      return Container(
        child: borderlessWidget,
        decoration: ShapeDecoration(
          shape: Border(
            right: BorderSide(
              color: AppColors.lightGrey,
              width: 1,
            ),
          ),
        ),
        padding: const EdgeInsets.only(right: 16),
      );
    }
    return borderlessWidget;
  }
}
