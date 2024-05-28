import 'package:flutter/material.dart';
import 'package:fyp_orvba/Business%20Screens/business_dashboard.dart';
import 'package:fyp_orvba/Business%20Screens/crete_%20business.dart';
import 'package:fyp_orvba/Business%20Screens/manage_business.dart';
import 'package:fyp_orvba/chat_screen.dart';
import 'package:fyp_orvba/signup/finish.dart';
import 'package:fyp_orvba/signup/user_signup.dart';
import 'package:fyp_orvba/user_dashboard.dart';
import 'package:fyp_orvba/welcome_screen.dart';

import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
