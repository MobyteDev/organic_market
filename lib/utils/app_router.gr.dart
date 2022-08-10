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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../ui/main_screen/main_screen.dart' as _i1;
import '../ui/product_page/product_page.dart' as _i2;

class AutoRouter extends _i3.RootStackRouter {
  AutoRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainScreen());
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainScreen.name, path: '/main-screen'),
        _i3.RouteConfig(ProductRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreen extends _i3.PageRouteInfo<void> {
  const MainScreen() : super(MainScreen.name, path: '/main-screen');

  static const String name = 'MainScreen';
}

/// generated route for
/// [_i2.ProductPage]
class ProductRoute extends _i3.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({_i4.Key? key, required String title})
      : super(ProductRoute.name,
            path: '/', args: ProductRouteArgs(key: key, title: title));

  static const String name = 'ProductRoute';
}

class ProductRouteArgs {
  const ProductRouteArgs({this.key, required this.title});

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, title: $title}';
  }
}
