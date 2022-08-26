import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_sum_state.dart';

class CartSumCubit extends Cubit<CartSumState> {
  CartSumCubit() : super(CartSumState(0, 0, 0));

  void update(int prevVal, int newVal, int prevOldVal, int oldVal, int oldAmount, int newAmount) {
    emit(CartSumState(state.sum - prevVal + newVal, state.oldSum - prevOldVal + oldVal, state.amount - oldAmount + newAmount));
  }
}
