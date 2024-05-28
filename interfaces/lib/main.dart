import 'package:flutter/material.dart';
import 'package:interfaces/home.dart';

void main() {
  runApp(const Interfaces());
}

class Interfaces extends StatefulWidget {
  const Interfaces({super.key});

  @override
  State<Interfaces> createState() => _InterfacesState();
}

class _InterfacesState extends State<Interfaces> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'UI Designs',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

