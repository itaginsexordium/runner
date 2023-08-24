import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:runner/features/shop/widgets/UI/Scaffold/AppBottomNavigationBar.dart';
import 'package:runner/features/shop/widgets/UI/Scaffold/AppSearchBar.dart';

class ShopScaffold extends StatelessWidget {
  const ShopScaffold({required this.child, super.key});

  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    bool themetogle = false;
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
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: AnimatedToggleSwitch.dual(
                  current: themetogle,
                  first: false,
                  second: true,
                  dif: 10.0,
                  borderColor: Colors.white,
                  borderWidth: 1.0,
                  height: 30,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1.5),
                    ),
                    
                  ],
                  onChanged: (b)  {
                   themetogle = true;
                  return Future.delayed(Duration(seconds: 2));
                },
                colorBuilder: (b) => b ? Colors.black : Colors.white,
                iconBuilder: (value) => value
                    ? const Icon(Icons.sunny)
                    : const Icon(Icons.nightlight_outlined , color: Colors.black,),                  
                ),
                trailing: Text('тогл языка'),
              ),
              ListTile(
                title: const Text('Каталог'),
                // selected: _selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  // _onItemTapped(0);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              Divider(height: 0),
              ListTile(
                title: const Text('Услуги'),
                // selected: _selectedIndex == 1,
                onTap: () {
                  // Update the state of the app
                  // _onItemTapped(1);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              Divider(height: 0),
              ListTile(
                title: const Text('Наши специалисты'),
                // selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  // _onItemTapped(2);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
              Divider(height: 0),
              ListTile(
                title: const Text('О компании'),
                // selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  // _onItemTapped(2);
                  // Then close the drawer
                  // Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: child,
        bottomNavigationBar: const AppBottomNavigationBar()
        // bottomNavigationBar: ,
        );
  }
}
