import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monvest',
      home: SplashScreen(),
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
      ),
    );
  }
}
