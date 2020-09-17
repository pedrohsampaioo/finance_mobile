import 'package:intl/intl.dart';

class HandleDate {
  static String format(DateTime date) {
    return DateFormat('MMM d, y').format(date);
  }
}
