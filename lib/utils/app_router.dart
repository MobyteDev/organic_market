import 'package:auto_route/auto_route.dart';
import 'package:organic_market/ui/categories_page/categories_page.dart';
import 'package:organic_market/ui/order_making_page/order_making_page.dart';
import 'package:organic_market/ui/order_success_page.dart/order_success_page.dart';
import 'package:organic_market/ui/product_page/product_page.dart';

import '../ui/main_screen/main_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: MainScreen,
      initial: true,
      children: [
        MaterialRoute(
          page: CategoriesPage,
          path: 'categories',
        ),
      ],

    ),
    MaterialRoute(page: ProductPage, path: '/product'),
    MaterialRoute(page: OrderMakingPage, path: '/orderMaking'),
    MaterialRoute(page: OrderSuccessPage, path: '/orderSuccess'),
  ],
  // replaceInRouteName: 'Route',
)
class $AutoRouter {}
