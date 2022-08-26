part of 'cart_page_bloc.dart';

@immutable
abstract class CartPageEvent {
  const CartPageEvent();
}

class CartPageLoadStarted extends CartPageEvent {
  const CartPageLoadStarted();
}
