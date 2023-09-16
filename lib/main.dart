import 'package:flutter/material.dart';
import 'package:gui_fvm/screens/homePage.dart';
import 'package:gui_fvm/utils/DataConstants.dart';
import 'package:gui_fvm/utils/color_schemes.g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FVM-G',
      theme: DataConstants.themeData,
      home: const HomePage(),
    );
  }
}
