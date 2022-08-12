enum SortEnum {
  date,
  price
}

extension SortExtension on SortEnum {
  String get text {
    switch (this) {
      case SortEnum.date:
        return "По дате добавления";
      case SortEnum.price:
        return "По цене";
      default:
        return "-";
    }
  }
}