import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/auth_dialog_bloc.dart';
import 'package:organic_market/bloc/cart_page_bloc.dart';
import 'package:organic_market/bloc/cart_sum_cubit.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/ui/auth_dialog/auth_dialog.dart';
import 'package:organic_market/ui/cart_page/strikethrough_painter.dart';
import 'package:organic_market/ui/cart_page/widgets/cart_product.dart';
import 'package:organic_market/ui/cart_page/widgets/cart_total.dart';
import 'package:organic_market/ui/cart_page/widgets/changed_price.dart';
import 'package:organic_market/ui/cart_page/widgets/product_amount_button.dart';
import 'package:organic_market/ui/cart_page/widgets/strikethrough_text.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/product_card_list.dart';

import 'package:organic_market/ui/auth_dialog/phone_dialog.dart';
import 'package:organic_market/ui/auth_dialog/name_and_surname_dialog.dart';
import 'package:organic_market/ui/auth_dialog/verification_dialog.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartPageBloc()..add(CartPageLoadStarted()),
        ),
        BlocProvider(
          create: (context) => CartSumCubit(),
        ),
      ],
      child: Scaffold(
        appBar: OrganicAppBar(title: 'Корзина',),
        body: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<CartPageBloc, CartPageState>(
                builder: (context, state) {
                  if (state is CartPageLoaded) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        return CartProduct(
                          sumCubit: BlocProvider.of<CartSumCubit>(context),
                          product: state.data[i],
                          initialAmount: 1,
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: AppColors.grey242243240_1,
                        height: 15.h,
                        thickness: 1,
                      ),
                      itemCount: state.data.length,
                      physics: NeverScrollableScrollPhysics(),
                    );
                  } else
                    return Center(
                      child: Text("Loading"), //TODO
                    );
                },
              ),
              ProductCardList(
                title: "Рекомендуем",
                smallTitle: true,
                products: [
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png"),
                  Product("Масло сливочное Традиционное", 0.35, 329,
                      "assets/images/product.png")
                ],
              ),
              Divider(
                indent: 16,
                endIndent: 16,
                color: AppColors.grey242243240_1,
                height: 32.h,
                thickness: 1.5,
              ),
              BlocBuilder<CartSumCubit, CartSumState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 0.0, right: 16.0, bottom: 0.0),
                    child: CartTotal(
                        sum: state.sum,
                        amount: state.amount,
                        oldSum: state.oldSum),
                  );
                },
              ),
              SizedBox(height: 24.h,),
            ],
          ),
        ),
      ),
    );
  }
}
