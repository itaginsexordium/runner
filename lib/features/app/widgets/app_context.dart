import 'package:flutter/material.dart';

class AppContext extends StatelessWidget {
  const AppContext({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('text'),
        ),
      ),
    );
  }
}
