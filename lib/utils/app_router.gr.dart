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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../data/subcategory.dart' as _i14;
import '../ui/cart_page/cart_page.dart' as _i10;
import '../ui/categories_page/categories_page.dart' as _i9;
import '../ui/home_page/home_page.dart' as _i1;
import '../ui/main_screen/main_screen.dart' as _i8;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/personal_data_page/personal_data_page.dart' as _i5;
import '../ui/pick_subcategory_page/pick_subcategory_page.dart' as _i6;
import '../ui/product_page/product_page.dart' as _i2;
import '../ui/profile_page/profile_page.dart' as _i11;
import '../ui/subcategory_page/subcategory_page.dart' as _i7;

class AutoRouter extends _i12.RootStackRouter {
  AutoRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderMakingPageRouteArgs>(
          orElse: () => const OrderMakingPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.OrderMakingPage(key: args.key));
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    PersonalDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataPageRouteArgs>(
          orElse: () => const PersonalDataPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PersonalDataPage(key: args.key));
    },
    PickSubcategoryPageRoute.name: (routeData) {
      final args = routeData.argsAs<PickSubcategoryPageRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.PickSubcategoryPage(
              key: args.key, subcategories: args.subcategories));
    },
    SubcategoryPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SubcategoryPage());
    },
    MainPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.MainPage());
    },
    CategoriesPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CategoriesPage());
    },
    CartPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CartPage());
    },
    ProfilePageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ProfilePage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i12.RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'mainPage',
              fullMatch: true),
          _i12.RouteConfig(MainPageRoute.name,
              path: 'mainPage', parent: HomePageRoute.name),
          _i12.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: HomePageRoute.name),
          _i12.RouteConfig(CartPageRoute.name,
              path: 'cart', parent: HomePageRoute.name),
          _i12.RouteConfig(ProfilePageRoute.name,
              path: 'profile', parent: HomePageRoute.name)
        ]),
        _i12.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i12.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i12.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess'),
        _i12.RouteConfig(PersonalDataPageRoute.name, path: '/personalData'),
        _i12.RouteConfig(PickSubcategoryPageRoute.name,
            path: '/pickSubcategory'),
        _i12.RouteConfig(SubcategoryPageRoute.name, path: '/subcategory')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i12.PageRouteInfo<void> {
  const HomePageRoute({List<_i12.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i12.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i13.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i13.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute
    extends _i12.PageRouteInfo<OrderMakingPageRouteArgs> {
  OrderMakingPageRoute({_i13.Key? key})
      : super(OrderMakingPageRoute.name,
            path: '/orderMaking', args: OrderMakingPageRouteArgs(key: key));

  static const String name = 'OrderMakingPageRoute';
}

class OrderMakingPageRouteArgs {
  const OrderMakingPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'OrderMakingPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i12.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.PersonalDataPage]
class PersonalDataPageRoute
    extends _i12.PageRouteInfo<PersonalDataPageRouteArgs> {
  PersonalDataPageRoute({_i13.Key? key})
      : super(PersonalDataPageRoute.name,
            path: '/personalData', args: PersonalDataPageRouteArgs(key: key));

  static const String name = 'PersonalDataPageRoute';
}

class PersonalDataPageRouteArgs {
  const PersonalDataPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PersonalDataPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.PickSubcategoryPage]
class PickSubcategoryPageRoute
    extends _i12.PageRouteInfo<PickSubcategoryPageRouteArgs> {
  PickSubcategoryPageRoute(
      {_i13.Key? key, required List<_i14.Subcategory> subcategories})
      : super(PickSubcategoryPageRoute.name,
            path: '/pickSubcategory',
            args: PickSubcategoryPageRouteArgs(
                key: key, subcategories: subcategories));

  static const String name = 'PickSubcategoryPageRoute';
}

class PickSubcategoryPageRouteArgs {
  const PickSubcategoryPageRouteArgs({this.key, required this.subcategories});

  final _i13.Key? key;

  final List<_i14.Subcategory> subcategories;

  @override
  String toString() {
    return 'PickSubcategoryPageRouteArgs{key: $key, subcategories: $subcategories}';
  }
}

/// generated route for
/// [_i7.SubcategoryPage]
class SubcategoryPageRoute extends _i12.PageRouteInfo<void> {
  const SubcategoryPageRoute()
      : super(SubcategoryPageRoute.name, path: '/subcategory');

  static const String name = 'SubcategoryPageRoute';
}

/// generated route for
/// [_i8.MainPage]
class MainPageRoute extends _i12.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'mainPage');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i9.CategoriesPage]
class CategoriesPageRoute extends _i12.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}

/// generated route for
/// [_i10.CartPage]
class CartPageRoute extends _i12.PageRouteInfo<void> {
  const CartPageRoute() : super(CartPageRoute.name, path: 'cart');

  static const String name = 'CartPageRoute';
}

/// generated route for
/// [_i11.ProfilePage]
class ProfilePageRoute extends _i12.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile');

  static const String name = 'ProfilePageRoute';
}
