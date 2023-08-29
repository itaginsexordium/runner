import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'AppBottomNavigationBar.dart';
import 'AppSearchBar.dart';
import 'theme_btn/LangDropDownBtn.dart';
import 'theme_btn/ThemeToggle.dart';

class ShopScaffold extends StatelessWidget {
  const ShopScaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final list = [
      'Каталог',
      'Услуги',
      'Наши специалисты',
      'Контакты',
    ];

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: SvgPicture.asset('assets/logo.svg'),
          actions: <Widget>[
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: AppSearchDelegate());
                },
                icon: const Icon(TablerIcons.search),
              );
            }),
            Builder(builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(TablerIcons.menu),
              );
            }),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
              children: ListTile.divideTiles(tiles: [
            const ListTile(
              leading: ThemeToggle(),
              trailing: LangDropDownBtn(),
            ),
            ...list
                .map((e) => ListTile(
                      dense: true,
                      title: Text(e),
                      onTap: () {},
                    ))
                .toList(),
          ], context: context)
                  .toList()),
        ),
        body: child,
        bottomNavigationBar: const AppBottomNavigationBar());
  }
}
