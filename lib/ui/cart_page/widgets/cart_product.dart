import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/cart_product_cubit.dart';
import 'package:organic_market/bloc/cart_sum_cubit.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product_in_cart.dart';
import 'package:organic_market/ui/cart_page/widgets/changed_price.dart';
import 'package:organic_market/ui/cart_page/widgets/product_amount_button.dart';

class CartProduct extends StatelessWidget {
  const CartProduct(
      {Key? key,
      required this.sumCubit,
      required this.product,
      required this.initialAmount})
      : super(key: key);
  final CartSumCubit sumCubit;
  final ProductInCart product;
  final int initialAmount;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartProductCubit(sumCubit, product, initialAmount),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 70.h,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 70.h,
                  width: 70.h,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: AppStyles.body1,
                  ),
                  Spacer(),
                  SizedBox(
                    width: 0.7.sw,
                    child: Row(
                      children: [
                        BlocBuilder<CartProductCubit, CartProductState>(
                          builder: (context, state) {
                            if (state.value == state.oldValue) {
                              return Text(
                                "${state.value} ₽",
                                style: AppStyles.body7,
                              );
                            } else {
                              return ChangedPrice(
                                  oldPrice: state.oldValue,
                                  newPrice: state.value);
                            }
                          },
                        ),
                        Spacer(),
                        Builder(builder: (context) {
                          return ProductAmountButton(
                            onChange: (val) {
                              BlocProvider.of<CartProductCubit>(context)
                                  .set(val);
                            },
                            onInc: () =>
                                BlocProvider.of<CartProductCubit>(context)
                                    .inc(),
                            onDec: () =>
                                BlocProvider.of<CartProductCubit>(context)
                                    .dec(),
                          );
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
