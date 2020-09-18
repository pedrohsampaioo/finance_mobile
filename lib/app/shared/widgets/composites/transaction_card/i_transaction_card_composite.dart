import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_theme.dart';

part 'general_transaction_card.dart';
part 'recent_transaction_card.dart';

// Design Pattern Composite
abstract class ITransactionCardComposite {
  const ITransactionCardComposite();
  Widget render();
  Widget renderIcon();
  Widget renderDescription();
  Widget renderValue();
}
