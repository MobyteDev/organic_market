part of 'subcategory_page_bloc.dart';

@immutable
abstract class SubcategoryPageState {
  const SubcategoryPageState();
}

class SubcategoryPageInitial extends SubcategoryPageState {
  const SubcategoryPageInitial();
}

class SubcategoryPageLoaded extends SubcategoryPageState {
  const SubcategoryPageLoaded({required this.data, this.sort = SortEnum.date});
  final ProductsByTags data;
  final SortEnum sort;
}