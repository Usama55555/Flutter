import 'package:flutter/material.dart';

class Screentwo extends StatelessWidget {
  static const String id = 'screen_two';
  const Screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('UB_Creatives')),
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('HomeScreen')),
      ),
    );
  }
}
