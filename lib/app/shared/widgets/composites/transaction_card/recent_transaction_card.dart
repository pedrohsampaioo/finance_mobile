part of 'i_transaction_card_composite.dart';

class RecentTransactionCard extends GeneralTransactionCard {
  const RecentTransactionCard({
    @required String title,
    @required String subtitle,
    @required int value,
    @required String iconPath,
  }) : super(
          title: title,
          subtitle: subtitle,
          value: value,
          iconPath: iconPath,
        );

  @override
  Widget renderIcon() {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(14),
      child: SvgPicture.asset(
        iconPath,
        color: AppColors.darkBlue,
        height: 20,
        width: 20,
      ),
    );
  }

  @override
  Widget renderValue() {
    return Text(
      '\$${value.toDouble().toStringAsFixed(2)}',
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.bodySmallSemiBold.copyWith(
        color: AppColors.darkBlue,
      ),
    );
  }
}
