import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runner/features/shop/bloc/navigatorBloc/navigator_bloc.dart';
import 'package:runner/features/shop/bloc/themeBloc/theme_bloc.dart';
import 'package:runner/features/shop/widgets/UI/Scaffold/shop_scaffold.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runner/features/shop_catalog/widgets/catalog_page.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<NavigatorBloc>().add(AppStarted());
    return ShopScaffold(
      child: BlocBuilder<NavigatorBloc, NavigatorMainState>(
          builder: (context, state) {
        return switch (state) {
          NavigatorHome() => Center(child: Text(state.toString())),
          NavigatorCart() => Center(child: Text(state.toString())),
          NavigatorProfile() => Center(child: Text(state.toString())),
          NavigatorCatalog() => const CatalogPage()
        };

        // Center(child: Text(state.toString()));
      }),
    );
  }
}
