import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/order.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/order_page/widgets/products_list.dart';

class OrderPage extends StatelessWidget {
  final Order _order = Order(
    number: 39578235,
    date: '15 июля 2022',
    productsNumber: 2,
    price: 1000,
    isDelivered: false,
    products: [
      Product(
        'Масло сливочное Традиционное',
        1,
        500,
        'assets/images/product.png',
        count: 1,
      ),
      Product(
        'Масло сливочное Традиционное',
        1,
        500,
        'assets/images/product.png',
        count: 1,
      ),
    ],
    deliveryPrice: 99,
  );

  OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(title: 'Заказ № ${_order.number}', isBack: true),
      body: ListView(
        padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
        children: [
          Center(
            child: Text(
              _order.date,
              style: AppStyles.bodyGrey7,
            ),
          ),
          SizedBox(height: 4.h),
          Center(
            child: Text(
              '${_order.productsNumber} товара на сумму ${_order.price} ₽',
              style: AppStyles.header8,
            ),
          ),
          SizedBox(height: 24.h),
          Center(
            child: Container(
              height: 40.h,
              width: 107.w,
              decoration: BoxDecoration(
                color: AppColors.blue55115231_0_1,
                borderRadius: BorderRadius.all(Radius.circular(93.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/green_car.png',
                    color: AppColors.blue55115231_1,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'В пути',
                    style: TextStyle(
                      color: AppColors.blue55115231_1,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 28.5.h),
          ProductsList(products: _order.products),
          Row(
            children: [
              Container(
                height: 70.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.r)),
                  color: Color.fromRGBO(237, 240, 233, 1),
                ),
                child: Image.asset('assets/icons/green_car.png'),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Доставка',
                      style: AppStyles.body1,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${_order.deliveryPrice} ₽',
                          style: AppStyles.header6,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
