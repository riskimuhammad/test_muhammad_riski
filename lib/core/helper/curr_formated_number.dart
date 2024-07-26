import 'package:intl/intl.dart';

class CurrFormatedNumber {
  static String formated(number, {customRp}) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: customRp ?? 'Rp ',
      decimalDigits: 0,
    );
    return currencyFormatter.format(number);
  }
}
