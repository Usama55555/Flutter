import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text('My App'),
        ),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/Thank.jpg'),
        ),
      ),
    ),
  ));
}
