import 'package:carte_de_visite/locator.dart';
import 'package:carte_de_visite/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte de visite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
