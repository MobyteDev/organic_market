part of 'subcategory_page_bloc.dart';

@immutable
abstract class SubcategoryPageEvent {
  const SubcategoryPageEvent();
}

class SubcategoryPageLoadStarted extends SubcategoryPageEvent {
  const SubcategoryPageLoadStarted();
}

class SubcategoryPageSortChanged extends SubcategoryPageEvent {
  const SubcategoryPageSortChanged({required this.sort});
  final SortEnum sort;
}

