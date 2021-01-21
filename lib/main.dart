import 'package:flutter/material.dart';
import 'screens/products-list.dart';
import 'screens/profile.dart';
import 'screens/browser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/': (context) => ProductsList(),
        '/profile': (context) => Profile(),
        '/browser': (context) => Browser(),
      },
    );
  }
}
