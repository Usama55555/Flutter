import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text('My App'),
      ),
      body: const Center(
        child: Image(
            image: NetworkImage(
                'data:image/jpeg;base64,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')),
      ),
    ),
  ));
}