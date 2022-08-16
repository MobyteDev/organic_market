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
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../ui/address_page/address_page.dart' as _i9;
import '../ui/categories_page/categories_page.dart' as _i13;
import '../ui/home_page/home_page.dart' as _i1;
import '../ui/main_screen/main_screen.dart' as _i12;
import '../ui/my_addresses_page/my_addresses_page.dart' as _i8;
import '../ui/my_orders_page/my_orders_page.dart' as _i6;
import '../ui/order_making_page/order_making_page.dart' as _i3;
import '../ui/order_page/order_page.dart' as _i7;
import '../ui/order_success_page.dart/order_success_page.dart' as _i4;
import '../ui/payment_method_page/payment_method_page.dart' as _i11;
import '../ui/payment_methods_page/payment_methods_page.dart' as _i10;
import '../ui/personal_data_page/personal_data_page.dart' as _i5;
import '../ui/product_page/product_page.dart' as _i2;
import '../ui/profile_page/profile_page.dart' as _i14;

class AutoRouter extends _i15.RootStackRouter {
  AutoRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    ProductPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductPageRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.ProductPage(key: args.key, title: args.title));
    },
    OrderMakingPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderMakingPageRouteArgs>(
          orElse: () => const OrderMakingPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.OrderMakingPage(key: args.key));
    },
    OrderSuccessPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.OrderSuccessPage());
    },
    PersonalDataPageRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDataPageRouteArgs>(
          orElse: () => const PersonalDataPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PersonalDataPage(key: args.key));
    },
    MyOrdersPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyOrdersPageRouteArgs>(
          orElse: () => const MyOrdersPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.MyOrdersPage(key: args.key));
    },
    OrderPageRoute.name: (routeData) {
      final args = routeData.argsAs<OrderPageRouteArgs>(
          orElse: () => const OrderPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.OrderPage(key: args.key));
    },
    MyAddressesPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.MyAddressesPage());
    },
    AddressPageRoute.name: (routeData) {
      final args = routeData.argsAs<AddressPageRouteArgs>(
          orElse: () => const AddressPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.AddressPage(key: args.key));
    },
    PaymentMethodsPageRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentMethodsPageRouteArgs>(
          orElse: () => const PaymentMethodsPageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.PaymentMethodsPage(key: args.key));
    },
    PaymentMethodPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.PaymentMethodPage());
    },
    MainPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.MainPage());
    },
    CategoriesPageRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.CategoriesPage());
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>(
          orElse: () => const ProfilePageRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.ProfilePage(key: args.key));
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(HomePageRoute.name, path: '/', children: [
          _i15.RouteConfig('#redirect',
              path: '',
              parent: HomePageRoute.name,
              redirectTo: 'mainPage',
              fullMatch: true),
          _i15.RouteConfig(MainPageRoute.name,
              path: 'mainPage', parent: HomePageRoute.name),
          _i15.RouteConfig(CategoriesPageRoute.name,
              path: 'categories', parent: HomePageRoute.name),
          _i15.RouteConfig(ProfilePageRoute.name,
              path: 'profile', parent: HomePageRoute.name)
        ]),
        _i15.RouteConfig(ProductPageRoute.name, path: '/product'),
        _i15.RouteConfig(OrderMakingPageRoute.name, path: '/orderMaking'),
        _i15.RouteConfig(OrderSuccessPageRoute.name, path: '/orderSuccess'),
        _i15.RouteConfig(PersonalDataPageRoute.name, path: '/personalData'),
        _i15.RouteConfig(MyOrdersPageRoute.name, path: '/myOrders'),
        _i15.RouteConfig(OrderPageRoute.name, path: '/order'),
        _i15.RouteConfig(MyAddressesPageRoute.name, path: '/myAddresses'),
        _i15.RouteConfig(AddressPageRoute.name, path: '/address'),
        _i15.RouteConfig(PaymentMethodsPageRoute.name, path: '/paymentMethods'),
        _i15.RouteConfig(PaymentMethodPageRoute.name, path: '/paymentMethod')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i15.PageRouteInfo<void> {
  const HomePageRoute({List<_i15.PageRouteInfo>? children})
      : super(HomePageRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.ProductPage]
class ProductPageRoute extends _i15.PageRouteInfo<ProductPageRouteArgs> {
  ProductPageRoute({_i16.Key? key, required String title})
      : super(ProductPageRoute.name,
            path: '/product',
            args: ProductPageRouteArgs(key: key, title: title));

  static const String name = 'ProductPageRoute';
}

class ProductPageRouteArgs {
  const ProductPageRouteArgs({this.key, required this.title});

  final _i16.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProductPageRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i3.OrderMakingPage]
class OrderMakingPageRoute
    extends _i15.PageRouteInfo<OrderMakingPageRouteArgs> {
  OrderMakingPageRoute({_i16.Key? key})
      : super(OrderMakingPageRoute.name,
            path: '/orderMaking', args: OrderMakingPageRouteArgs(key: key));

  static const String name = 'OrderMakingPageRoute';
}

class OrderMakingPageRouteArgs {
  const OrderMakingPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'OrderMakingPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OrderSuccessPage]
class OrderSuccessPageRoute extends _i15.PageRouteInfo<void> {
  const OrderSuccessPageRoute()
      : super(OrderSuccessPageRoute.name, path: '/orderSuccess');

  static const String name = 'OrderSuccessPageRoute';
}

/// generated route for
/// [_i5.PersonalDataPage]
class PersonalDataPageRoute
    extends _i15.PageRouteInfo<PersonalDataPageRouteArgs> {
  PersonalDataPageRoute({_i16.Key? key})
      : super(PersonalDataPageRoute.name,
            path: '/personalData', args: PersonalDataPageRouteArgs(key: key));

  static const String name = 'PersonalDataPageRoute';
}

class PersonalDataPageRouteArgs {
  const PersonalDataPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PersonalDataPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.MyOrdersPage]
class MyOrdersPageRoute extends _i15.PageRouteInfo<MyOrdersPageRouteArgs> {
  MyOrdersPageRoute({_i16.Key? key})
      : super(MyOrdersPageRoute.name,
            path: '/myOrders', args: MyOrdersPageRouteArgs(key: key));

  static const String name = 'MyOrdersPageRoute';
}

class MyOrdersPageRouteArgs {
  const MyOrdersPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'MyOrdersPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.OrderPage]
class OrderPageRoute extends _i15.PageRouteInfo<OrderPageRouteArgs> {
  OrderPageRoute({_i16.Key? key})
      : super(OrderPageRoute.name,
            path: '/order', args: OrderPageRouteArgs(key: key));

  static const String name = 'OrderPageRoute';
}

class OrderPageRouteArgs {
  const OrderPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'OrderPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.MyAddressesPage]
class MyAddressesPageRoute extends _i15.PageRouteInfo<void> {
  const MyAddressesPageRoute()
      : super(MyAddressesPageRoute.name, path: '/myAddresses');

  static const String name = 'MyAddressesPageRoute';
}

/// generated route for
/// [_i9.AddressPage]
class AddressPageRoute extends _i15.PageRouteInfo<AddressPageRouteArgs> {
  AddressPageRoute({_i16.Key? key})
      : super(AddressPageRoute.name,
            path: '/address', args: AddressPageRouteArgs(key: key));

  static const String name = 'AddressPageRoute';
}

class AddressPageRouteArgs {
  const AddressPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'AddressPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.PaymentMethodsPage]
class PaymentMethodsPageRoute
    extends _i15.PageRouteInfo<PaymentMethodsPageRouteArgs> {
  PaymentMethodsPageRoute({_i16.Key? key})
      : super(PaymentMethodsPageRoute.name,
            path: '/paymentMethods',
            args: PaymentMethodsPageRouteArgs(key: key));

  static const String name = 'PaymentMethodsPageRoute';
}

class PaymentMethodsPageRouteArgs {
  const PaymentMethodsPageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PaymentMethodsPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.PaymentMethodPage]
class PaymentMethodPageRoute extends _i15.PageRouteInfo<void> {
  const PaymentMethodPageRoute()
      : super(PaymentMethodPageRoute.name, path: '/paymentMethod');

  static const String name = 'PaymentMethodPageRoute';
}

/// generated route for
/// [_i12.MainPage]
class MainPageRoute extends _i15.PageRouteInfo<void> {
  const MainPageRoute() : super(MainPageRoute.name, path: 'mainPage');

  static const String name = 'MainPageRoute';
}

/// generated route for
/// [_i13.CategoriesPage]
class CategoriesPageRoute extends _i15.PageRouteInfo<void> {
  const CategoriesPageRoute()
      : super(CategoriesPageRoute.name, path: 'categories');

  static const String name = 'CategoriesPageRoute';
}

/// generated route for
/// [_i14.ProfilePage]
class ProfilePageRoute extends _i15.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({_i16.Key? key})
      : super(ProfilePageRoute.name,
            path: 'profile', args: ProfilePageRouteArgs(key: key));

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key}';
  }
}
