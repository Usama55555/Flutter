import 'package:facebook_ui/login_page.dart';
import 'package:facebook_ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Facebook());
}

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => const Login(),
        Homepage.id: (context) => const Homepage(),
    },
    );
  }
}

