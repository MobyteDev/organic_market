import 'package:auto_route/auto_route.dart';
import 'package:organic_market/ui/home_page/home_page.dart';
import 'package:organic_market/ui/categories_page/categories_page.dart';
import 'package:organic_market/ui/my_orders_page/my_orders_page.dart';
import 'package:organic_market/ui/order_making_page/order_making_page.dart';
import 'package:organic_market/ui/order_page/order_page.dart';
import 'package:organic_market/ui/order_success_page.dart/order_success_page.dart';
import 'package:organic_market/ui/personal_data_page/personal_data_page.dart';
import 'package:organic_market/ui/product_page/product_page.dart';
import 'package:organic_market/ui/profile_page/profile_page.dart';

import '../ui/main_screen/main_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: HomePage,
      initial: true,
      children: [
        MaterialRoute(
          page: MainPage,
          path: 'mainPage',
          initial: true,
        ),
        MaterialRoute(
          page: CategoriesPage,
          path: 'categories',
        ),
        MaterialRoute(
          page: ProfilePage,
          path: 'profile',
        ),
      ],
    ),
    MaterialRoute(page: ProductPage, path: '/product'),
    MaterialRoute(page: OrderMakingPage, path: '/orderMaking'),
    MaterialRoute(page: OrderSuccessPage, path: '/orderSuccess'),
    MaterialRoute(page: PersonalDataPage, path: '/personalData'),
    MaterialRoute(page: MyOrdersPage, path: '/myOrders'),
    MaterialRoute(page: OrderPage, path: '/order'),
  ],
  // replaceInRouteName: 'Route',
)
class $AutoRouter {}
