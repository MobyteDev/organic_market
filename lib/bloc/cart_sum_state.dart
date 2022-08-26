part of 'cart_sum_cubit.dart';

@immutable
class CartSumState {
  const CartSumState(this.sum, this.oldSum, this.amount);
  final int sum;
  final int oldSum;
  final int amount;

}