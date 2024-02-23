import 'package:intl/intl.dart';

class AppFormat {
  static String shortPrice(num number) {
    return NumberFormat.compactCurrency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String longPrice(num number) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    ).format(number);
  }

  static String justDate(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  /// source: DateTime | String\
  /// Monday, 21 Februari 24 (format tanggal)
  static String edMy(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMM yy').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMM yy').format(source);
      default:
        return 'Not valid';
    }
  }

  /// source: DateTime | String\
  /// Monday, 21 Februari 2024 (format tanggal)
  static String fullDate(source) {
    switch (source.runtimeType) {
      case String:
        return DateFormat('EEEE, d MMMM yyyy').format(DateTime.parse(source));
      case DateTime:
        return DateFormat('EEEE, d MMMM yy').format(source);
      default:
        return 'Not valid';
    }
  }
}
