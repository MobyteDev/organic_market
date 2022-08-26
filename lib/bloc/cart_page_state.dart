part of 'cart_page_bloc.dart';

@immutable
abstract class CartPageState {
  const CartPageState();
}

class CartPageInitial extends CartPageState {
  const CartPageInitial();
}

class CartPageLoaded extends CartPageState {
  const CartPageLoaded({required this.data});
  final List<ProductInCart> data;
}