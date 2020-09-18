import 'package:flutter/foundation.dart';

class TransactionModel {
  final int value;
  final String title;
  final String subtitle;
  final String svgPath;

  const TransactionModel({
    @required this.value,
    @required this.title,
    @required this.subtitle,
    @required this.svgPath,
  })  : assert(value != null),
        assert(title != null),
        assert(subtitle != null),
        assert(svgPath != null);

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      subtitle: json['subtitle'],
      svgPath: json['svg_path'],
      title: json['title'],
      value: json['value'],
    );
  }
}
