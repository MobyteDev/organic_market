import 'package:auto_route/auto_route.dart';
import 'package:organic_market/ui/product_page/product_page.dart';

import '../ui/main_screen/main_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(
      page: MainScreen,
      initial: true,
      // children: [
      //   MaterialRoute(
      //     page: ProductPage,
      //     path: 'product',
      //   ),
      // ],
    ),
    MaterialRoute(page: ProductPage, path: '/product'),
  ],
  // replaceInRouteName: 'Route',
)
class $AutoRouter {}
