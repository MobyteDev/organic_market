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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../ui/categories_page/categories_page.dart' as _i7;
import '../ui/main_screen/main_screen.dart' as _i1;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/personal_data_page/personal_data_page.dart' as _i6;
import '../ui/product_page/product_page.dart' as _i2;
import '../ui/profile_page/profile_page.dart' as _i5;

class AutoRouter extends _i8.RootStackRouter {
  AutoRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    MainPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OrderMakingPage());
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfilePage());
    },
    PersonalDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataPageRouteArgs>(
          orElse: () => const PersonalDataPageRouteArgs());
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.PersonalDataPage(key: args.key));
    },
    CategoriesPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CategoriesPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(MainPageRoute.name, path: '/', children: [
          _i8.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: MainPageRoute.name)
        ]),
        _i8.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i8.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i8.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess'),
        _i8.RouteConfig(ProfilePageRoute.name, path: '/profile'),
        _i8.RouteConfig(PersonalDataPageRoute.name, path: '/personalData')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainPageRoute extends _i8.PageRouteInfo<void> {
  const MainPageRoute({List<_i8.PageRouteInfo>? children})
      : super(MainPageRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i8.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i9.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i9.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute extends _i8.PageRouteInfo<void> {
  const OrderMakingPageRoute()
      : super(OrderMakingPageRoute.name, path: '/orderMaking');

  static const String name = 'OrderMakingPageRoute';
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i8.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.ProfilePage]
class ProfilePageRoute extends _i8.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: '/profile');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i6.PersonalDataPage]
class PersonalDataPageRoute
    extends _i8.PageRouteInfo<PersonalDataPageRouteArgs> {
  PersonalDataPageRoute({_i9.Key? key})
      : super(PersonalDataPageRoute.name,
            path: '/personalData', args: PersonalDataPageRouteArgs(key: key));

  static const String name = 'PersonalDataPageRoute';
}

class PersonalDataPageRouteArgs {
  const PersonalDataPageRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'PersonalDataPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.CategoriesPage]
class CategoriesPageRoute extends _i8.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}
