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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../home_page/home_page.dart' as _i1;
import '../ui/categories_page/categories_page.dart' as _i6;
import '../ui/main_screen/main_screen.dart' as _i5;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/product_page/product_page.dart' as _i2;

class AutoRouter extends _i7.RootStackRouter {
  AutoRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OrderMakingPage());
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    MainPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.MainPage());
    },
    CategoriesPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CategoriesPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i7.RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'mainPage',
              fullMatch: true),
          _i7.RouteConfig(MainPageRoute.name,
              path: 'mainPage', parent: HomePageRoute.name),
          _i7.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: HomePageRoute.name)
        ]),
        _i7.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i7.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i7.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute({List<_i7.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i7.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i8.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i8.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute extends _i7.PageRouteInfo<void> {
  const OrderMakingPageRoute()
      : super(OrderMakingPageRoute.name, path: '/orderMaking');

  static const String name = 'OrderMakingPageRoute';
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i7.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.MainPage]
class MainPageRoute extends _i7.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'mainPage');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i6.CategoriesPage]
class CategoriesPageRoute extends _i7.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}
