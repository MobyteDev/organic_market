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
    String priceString = price.toString();
    int j = 1;
    // Идем с конца, добавляем  пробел через каждые 3 цифры
    for (int i = priceString.length - 1; i >= 0; i--) {
      if (j % 3 == 0) {
        priceString = priceString.replaceRange(i, i, ' ');
      }
      j++;
    }
    return priceString;
  }

  static String getFormattedNumber(String number) {
    return number
        .replaceRange(0, 0, '+')
        .replaceRange(2, 2, ' ')
        .replaceRange(6, 6, ' ')
        .replaceRange(10, 10, ' ')
        .replaceRange(13, 13, ' ');
  }

  static String getFormattedCardNumber(String number) {
    return number
        .replaceRange(4, 4, ' ')
        .replaceRange(9, 9, ' ')
        .replaceRange(14, 14, ' ');
  }
}
