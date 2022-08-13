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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../ui/categories_page/categories_page.dart' as _i7;
import '../ui/home_page/home_page.dart' as _i1;
import '../ui/main_screen/main_screen.dart' as _i6;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/personal_data_page/personal_data_page.dart' as _i5;
import '../ui/product_page/product_page.dart' as _i2;
import '../ui/profile_page/profile_page.dart' as _i8;

class AutoRouter extends _i9.RootStackRouter {
  AutoRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.OrderMakingPage());
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    PersonalDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataPageRouteArgs>(
          orElse: () => const PersonalDataPageRouteArgs());
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PersonalDataPage(key: args.key));
    },
    MainPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MainPage());
    },
    CategoriesPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CategoriesPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfilePage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i9.RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'mainPage',
              fullMatch: true),
          _i9.RouteConfig(MainPageRoute.name,
              path: 'mainPage', parent: HomePageRoute.name),
          _i9.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: HomePageRoute.name),
          _i9.RouteConfig(ProfilePageRoute.name,
              path: 'profile', parent: HomePageRoute.name)
        ]),
        _i9.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i9.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i9.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess'),
        _i9.RouteConfig(PersonalDataPageRoute.name, path: '/personalData')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i9.PageRouteInfo<void> {
  const HomePageRoute({List<_i9.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i9.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i10.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i10.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute extends _i9.PageRouteInfo<void> {
  const OrderMakingPageRoute()
      : super(OrderMakingPageRoute.name, path: '/orderMaking');

  static const String name = 'OrderMakingPageRoute';
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i9.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.PersonalDataPage]
class PersonalDataPageRoute
    extends _i9.PageRouteInfo<PersonalDataPageRouteArgs> {
  PersonalDataPageRoute({_i10.Key? key})
      : super(PersonalDataPageRoute.name,
            path: '/personalData', args: PersonalDataPageRouteArgs(key: key));

  static const String name = 'PersonalDataPageRoute';
}

class PersonalDataPageRouteArgs {
  const PersonalDataPageRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'PersonalDataPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.MainPage]
class MainPageRoute extends _i9.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'mainPage');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i7.CategoriesPage]
class CategoriesPageRoute extends _i9.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfilePageRoute extends _i9.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile');

  static const String name = 'ProfilePageRoute';
}
