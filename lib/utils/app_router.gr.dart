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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;

import '../ui/address_page/address_page.dart' as _i9;
import '../ui/categories_page/categories_page.dart' as _i11;
import '../ui/home_page/home_page.dart' as _i1;
import '../ui/main_screen/main_screen.dart' as _i10;
import '../ui/my_addresses_page/my_addresses_page.dart' as _i8;
import '../ui/my_orders_page/my_orders_page.dart' as _i6;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_page/order_page.dart' as _i7;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/personal_data_page/personal_data_page.dart' as _i5;
import '../ui/product_page/product_page.dart' as _i2;
import '../ui/profile_page/profile_page.dart' as _i12;

class AutoRouter extends _i13.RootStackRouter {
  AutoRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderMakingPageRouteArgs>(
          orElse: () => const OrderMakingPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.OrderMakingPage(key: args.key));
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    PersonalDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataPageRouteArgs>(
          orElse: () => const PersonalDataPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PersonalDataPage(key: args.key));
    },
    MyOrdersPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyOrdersPageRouteArgs>(
          orElse: () => const MyOrdersPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.MyOrdersPage(key: args.key));
    },
    OrderPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderPageRouteArgs>(
          orElse: () => const OrderPageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.OrderPage(key: args.key));
    },
    MyAddressesPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.MyAddressesPage());
    },
    AddressPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.AddressPage());
    },
    MainPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MainPage());
    },
    CategoriesPageRoute.name: (routeData) {
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.CategoriesPage());
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>(
          orElse: () => const ProfilePageRouteArgs());
      return _i13.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.ProfilePage(key: args.key));
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i13.RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'mainPage',
              fullMatch: true),
          _i13.RouteConfig(MainPageRoute.name,
              path: 'mainPage', parent: HomePageRoute.name),
          _i13.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: HomePageRoute.name),
          _i13.RouteConfig(ProfilePageRoute.name,
              path: 'profile', parent: HomePageRoute.name)
        ]),
        _i13.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i13.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i13.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess'),
        _i13.RouteConfig(PersonalDataPageRoute.name, path: '/personalData'),
        _i13.RouteConfig(MyOrdersPageRoute.name, path: '/myOrders'),
        _i13.RouteConfig(OrderPageRoute.name, path: '/order'),
        _i13.RouteConfig(MyAddressesPageRoute.name, path: '/myAddresses'),
        _i13.RouteConfig(AddressPageRoute.name, path: '/address')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i13.PageRouteInfo<void> {
  const HomePageRoute({List<_i13.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i13.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i14.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i14.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute
    extends _i13.PageRouteInfo<OrderMakingPageRouteArgs> {
  OrderMakingPageRoute({_i14.Key? key})
      : super(OrderMakingPageRoute.name,
            path: '/orderMaking', args: OrderMakingPageRouteArgs(key: key));

  static const String name = 'OrderMakingPageRoute';
}

class OrderMakingPageRouteArgs {
  const OrderMakingPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'OrderMakingPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i13.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.PersonalDataPage]
class PersonalDataPageRoute
    extends _i13.PageRouteInfo<PersonalDataPageRouteArgs> {
  PersonalDataPageRoute({_i14.Key? key})
      : super(PersonalDataPageRoute.name,
            path: '/personalData', args: PersonalDataPageRouteArgs(key: key));

  static const String name = 'PersonalDataPageRoute';
}

class PersonalDataPageRouteArgs {
  const PersonalDataPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'PersonalDataPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.MyOrdersPage]
class MyOrdersPageRoute extends _i13.PageRouteInfo<MyOrdersPageRouteArgs> {
  MyOrdersPageRoute({_i14.Key? key})
      : super(MyOrdersPageRoute.name,
            path: '/myOrders', args: MyOrdersPageRouteArgs(key: key));

  static const String name = 'MyOrdersPageRoute';
}

class MyOrdersPageRouteArgs {
  const MyOrdersPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'MyOrdersPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.OrderPage]
class OrderPageRoute extends _i13.PageRouteInfo<OrderPageRouteArgs> {
  OrderPageRoute({_i14.Key? key})
      : super(OrderPageRoute.name,
            path: '/order', args: OrderPageRouteArgs(key: key));

  static const String name = 'OrderPageRoute';
}

class OrderPageRouteArgs {
  const OrderPageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'OrderPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.MyAddressesPage]
class MyAddressesPageRoute extends _i13.PageRouteInfo<void> {
  const MyAddressesPageRoute()
      : super(MyAddressesPageRoute.name, path: '/myAddresses');

  static const String name = 'MyAddressesPageRoute';
}

/// generated route for
/// [_i9.AddressPage]
class AddressPageRoute extends _i13.PageRouteInfo<void> {
  const AddressPageRoute() : super(AddressPageRoute.name, path: '/address');

  static const String name = 'AddressPageRoute';
}

/// generated route for
/// [_i10.MainPage]
class MainPageRoute extends _i13.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'mainPage');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i11.CategoriesPage]
class CategoriesPageRoute extends _i13.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}

/// generated route for
/// [_i12.ProfilePage]
class ProfilePageRoute extends _i13.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({_i14.Key? key})
      : super(ProfilePageRoute.name,
            path: 'profile', args: ProfilePageRouteArgs(key: key));

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key}';
  }
}
