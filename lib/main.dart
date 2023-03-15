import 'package:flutter/material.dart';
import 'package:hackathon/Views/Home_view.dart';
import 'package:hackathon/Views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
          Splash_Screen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
