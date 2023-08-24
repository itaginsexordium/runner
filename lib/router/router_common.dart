 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:runner/features/shop/widgets/shop_page.dart';

class RouterCommon {
  static GoRoute build() {
    return GoRoute(routes: <RouteBase>[
      GoRoute(
          path: '/',
          builder: (context, state) => const ShopPage(),
          routes: <RouteBase>[])
    ], path: '');
  }
}

final class MainRouter {}
