import 'package:flutter/material.dart';
import 'package:calculadora/screens/pantalla.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Flutter',
      home: const Pantalla(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}
