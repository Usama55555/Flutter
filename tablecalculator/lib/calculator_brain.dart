import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight, required this.end});

  final int height;
  final int weight;
  final int end;

  int _bmi = 0;
  Color _textColor = Color(0xFF24D876);

  String result() {
    _bmi = (height);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'Freakish';
    } else if (_bmi > 20) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'You have more than normal body weight.\nTry to do more Exercise';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight.\nGood job!';
    } else {
      return 'You have lower than normal body weight.\nTry to eat more';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return Color(0xFF24D876);
    }
  }

  List<int> generateTable() {
    List<int> table = [];
    for (int i = weight; i <= end; i++) {
      table.add(height * i);
    }
    return table;
  }
}
