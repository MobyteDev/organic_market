part of 'cart_product_cubit.dart';

@immutable
class CartProductState {
  const CartProductState(this.value, this.oldValue, [this.prevValue = 0, this.prevOldValue = 0]);
  final int value;
  final int oldValue;
  final int prevValue;
  final int prevOldValue;
}