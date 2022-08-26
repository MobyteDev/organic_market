import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:organic_market/bloc/cart_sum_cubit.dart';
import 'package:organic_market/data/product_in_cart.dart';

part 'cart_product_state.dart';

class CartProductCubit extends Cubit<CartProductState> {
  final ProductInCart product;
  final CartSumCubit sum;
  int amount;
  CartProductCubit(this.sum, this.product, this.amount)
      : super(
          CartProductState(
            (product.default_price *
                    amount *
                    (100 -
                        product.discounts[
                            min(amount, product.discounts.length - 1)]) /
                    100)
                .ceil(),
            product.default_price * amount,
          ),
        ) {
    sum.update(state.prevValue, state.value, state.prevOldValue, state.oldValue, 0, amount);
  }

  void inc() {
    set(amount+1);

    sum.update(state.prevValue, state.value, state.prevOldValue, state.oldValue, amount-1, amount);
  }
  void dec() {
    set(amount-1);
    sum.update(state.prevValue, state.value, state.prevOldValue, state.oldValue, amount+1, amount);
  }

  void set(int amount) {
    this.amount = amount;
    emit(
      CartProductState(
        (product.default_price *
                amount *
                (100 -
                    product
                        .discounts[min(amount, product.discounts.length - 1)]) /
                100)
            .ceil(),
        product.default_price * amount,
        state.value,
        state.oldValue,
      ),
    );


  }
}
