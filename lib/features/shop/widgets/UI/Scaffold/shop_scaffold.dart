


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopScaffold extends StatelessWidget {
  const ShopScaffold({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: Text('test'),
      ),
      // bottomNavigationBar: ,
    );
  }
  }