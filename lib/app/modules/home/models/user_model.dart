import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String career;
  final int income;
  final int expenses;
  final int loan;
  final String imageUrl;

  const UserModel({
    @required this.name,
    @required this.career,
    @required this.income,
    @required this.expenses,
    @required this.loan,
    @required this.imageUrl,
  })  : assert(name != null),
        assert(career != null),
        assert(income != null),
        assert(expenses != null),
        assert(imageUrl != null),
        assert(loan != null);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      imageUrl: json['image_url'],
      career: json['career'],
      expenses: json['expenses'],
      income: json['income'],
      loan: json['loan'],
      name: json['name'],
    );
  }
}
