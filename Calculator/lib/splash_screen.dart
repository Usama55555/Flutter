import 'package:calculator/home_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context) => const home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Image(height: 90, width: 90, image: AssetImage('images/calculator.png')),
              ),
            ),
            Image(image: AssetImage('images/loading.gif'))
          ],
        ),
      ),
    );
  }
}
