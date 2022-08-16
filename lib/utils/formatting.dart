import 'package:intl/intl.dart';

class Formatting {
  static String getProductDeclination(int number) {
    if (number % 100 >= 11 && number % 100 <= 14) {
      return 'товаров';
    } else if (number % 10 == 1) {
      return 'товар';
    } else if (number % 10 >= 2 && number % 10 <= 4) {
      return 'товара';
    } else {
      return 'товаров';
    }
  }

  static String getFormattedPrice(int price) {
    NumberFormat format = NumberFormat.decimalPattern('ru');
    return format.format(price);
  }
}
