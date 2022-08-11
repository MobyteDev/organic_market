// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../ui/main_screen/main_screen.dart' as _i1;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/product_page/product_page.dart' as _i2;

class AutoRouter extends _i5.RootStackRouter {
  AutoRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OrderMakingPage());
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(MainScreenRoute.name, path: '/'),
        _i5.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i5.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i5.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i5.PageRouteInfo<void> {
  const MainScreenRoute() : super(MainScreenRoute.name, path: '/');

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i5.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i6.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i6.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute extends _i5.PageRouteInfo<void> {
  const OrderMakingPageRoute()
      : super(OrderMakingPageRoute.name, path: '/orderMaking');

  static const String name = 'OrderMakingPageRoute';
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i5.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}
