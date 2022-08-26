import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/data/product_in_cart.dart';

part 'cart_page_event.dart';

part 'cart_page_state.dart';

class CartPageBloc extends Bloc<CartPageEvent, CartPageState> {
  CartPageBloc() : super(CartPageInitial()) {
    on<CartPageLoadStarted>(
      (event, emit) {
        emit(
          CartPageLoaded(
            data: [
              ProductInCart(
                title: "Масло сливочное Традиционное",
                image: "assets/images/meat.png",
                default_price: 369,
                discounts: [0, 0, 10, 15, 30],
              ),
              ProductInCart(
                title: "Масло сливочное Традиционное",
                image: "assets/images/meat.png",
                default_price: 369,
                discounts: [0, 0, 10, 15, 30],
              ),
              ProductInCart(
                title: "Масло сливочное Традиционное",
                image: "assets/images/meat.png",
                default_price: 369,
                discounts: [0, 0, 10, 15, 30],
              ),
            ],
          ),
        );
      },
    );
  }
}
