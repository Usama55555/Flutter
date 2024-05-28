import 'package:ch_5/home_screen.dart';
import 'package:ch_5/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Homescreen.id,
      routes: {
        Homescreen.id: (context) => const Homescreen(),
        Screentwo.id: (context) => const Screentwo(),
      },
    );
  }
}

