import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:runner/features/shop/widgets/shop_page.dart';

class AppContext extends StatelessWidget {
  const AppContext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: GoRouter(
          routes: <RouteBase>[
            GoRoute(
                path: '/',
                builder: (context, state) => const ShopPage(),
                routes: <RouteBase>[]),
          ],
        ));
  }
}
