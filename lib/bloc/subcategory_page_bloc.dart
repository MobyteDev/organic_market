import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/data/products_by_tags.dart';
import 'package:organic_market/data/sort_enum.dart';

part 'subcategory_page_event.dart';

part 'subcategory_page_state.dart';

class SubcategoryPageBloc
    extends Bloc<SubcategoryPageEvent, SubcategoryPageState> {
  SubcategoryPageBloc() : super(SubcategoryPageInitial()) {
    on<SubcategoryPageLoadStarted>(
      (event, emit) {
        emit(
          SubcategoryPageLoaded(
            data: ProductsByTags(
              tags: ["Чаи чёрные", "Чаи зелёные", "Чаи прочие"],
              lists: [
                [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                ],
                [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                ],
                [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                ],
              ],
            ),
          ),
        );
      },
    );

    on<SubcategoryPageSortChanged>((event, emit) {
      emit(SubcategoryPageLoaded(
        data: ((this.state) as SubcategoryPageLoaded).data, //TODO: sort
        sort: event.sort,
      ));
    });
  }
}
