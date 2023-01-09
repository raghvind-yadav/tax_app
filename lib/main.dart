import 'package:flutter/material.dart';
import './taxCalc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tax App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Tax_Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
