import 'dart:math';
import 'package:bmi_calculator/component.dart';
import 'package:bmi_calculator/dashboard.dart';
import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {

  final double result;
  resultScreen({super.key,required this.result});
  String getText() {
    if (result >= 25) {
      return 'OVERWEIGHT';
    } else if (result > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getAdvise() {
    if (result >= 25) {
      return 'You have a more than normal body weight.\n Try to do more Exercise';
    } else if (result > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n Try to eat more';
    }
  }

  Color getTextColor() {
    if (result >= 25 || result <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return Color(0xFF24D876);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(alignment: Alignment.topLeft,child: Text('Your Result',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),)),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                container(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: Center(child: Text(getText(),style: TextStyle(color: getTextColor(),fontSize: 20),))),
                    Expanded(child: Center(child: Text(result.toStringAsFixed(1),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),))),
                    Expanded(child: Center(child: Text(getAdvise(),style: TextStyle(color: Colors.white,fontSize: 20),))),
                  ],
                )),
              ],
            ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));
              },
              child: Container(
                child: Center(child: Text('RE-CALCULATE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }}
