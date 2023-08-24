

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:runner/features/shop/bloc/navigatorBloc/navigator_bloc.dart';
import 'package:runner/features/shop/widgets/UI/Scaffold/shop_scaffold.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  
  
  @override
  Widget build(BuildContext context) {
       context.read<NavigatorBloc>().add(AppStarted());
    return const ShopScaffold(child: Center(child: Text('test2')),);
  }
}