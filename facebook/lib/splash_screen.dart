import 'dart:async';

import 'package:facebook/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () { Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login())); });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const Expanded(flex: 2, child: Image(height: 50, width: 50, image: AssetImage('assets/Facebook.png'))),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Expanded(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('From'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(CupertinoIcons.infinite),
                      Text(' Meta'),
                    ],
                  )
                ],
              ),
            ),
          ),
      ],),
    );
  }
}
