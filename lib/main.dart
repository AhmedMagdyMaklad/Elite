import 'package:flutter/material.dart';
import 'package:hero/Splash_screen.dart';
import 'package:hero/Home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 43, 58, 85)
    ),
    initialRoute: '/splashscreen',
    routes: {
      '/homepage': (context) => const HomePage(),
      '/splashscreen': (context) => const SplashScreen(),

    },
  ));
}