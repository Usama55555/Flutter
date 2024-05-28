import 'dart:math';
import 'package:bmi_calculator/component.dart';
import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}
double _bmi = 0;
var answer = '';
enum Gender {
  male,
  female,
}
class _DashboardState extends State<Dashboard> {
  late Gender selectedGender = Gender.male;
  double _currentslidervalue = 90;
  var weight = 60;
  var age = 20;
  Color color = Colors.white;
  double result() {
    _bmi = (weight / pow(_currentslidervalue / 100, 2));
    return _bmi.toDouble();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: Column(
    children: [
      Expanded(
        flex: 6,
        child: Column(
        children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: container(
                    color: selectedGender == Gender.male
                        ? Color(0xFF1D1E33)
                        : Color(0xFF111328),
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(size: 70, Icons.male, color: color),
                      Text(
                        'MALE',
                        style: TextStyle(color: color),
                      )
                    ],
                  )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: container(
                      color: selectedGender == Gender.female
                          ? Color(0xFF1D1E33)
                          : Color(0xFF111328),
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(size: 70, Icons.female, color: color),
                      Text(
                        'FEMALE',
                        style: TextStyle(color: color),
                      )
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
        container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT',
              style: TextStyle(color: color),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _currentslidervalue.round().toString(),
                  style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text(
                  ' cm',
                  style: TextStyle(color: color),
                )
              ],
            ),
            Slider(
                thumbColor: Colors.redAccent,
                activeColor: Colors.grey,
                inactiveColor: Colors.blueGrey,
                value: _currentslidervalue,
                max: 250,
                onChanged: (double value) {
                  setState(() {
                    _currentslidervalue = value;
                  });
                })
          ],
        )),
        Expanded(
          child: Row(
            children: [
              container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WEIGHT',
                    style: TextStyle(color: color),
                  ),
                  Text(weight.round().toString(),style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),),
                  Row(
                    children: [
                      iconbutton(icon: Icons.remove, onpress: (){
                        setState(() {
                          weight -= 1;
                        });
                      }),
                      iconbutton(icon: Icons.add, onpress: (){
                        setState(() {
                          weight += 1;
                        });
                      }),
                    ],
                  ),
                ],
              )),
              container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AGE',
                    style: TextStyle(color: color),
                  ),
                  Text(age.round().toString(),style: TextStyle(
                      color: color,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),),
                  Row(
                    children: [
                      iconbutton(icon: Icons.remove, onpress: (){
                        setState(() {
                          age -= 1;
                        });
                      }),
                      iconbutton(icon: Icons.add, onpress: (){
                        setState(() {
                          age += 1;
                        });
                      }),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
  ]),
      ),
      Expanded(child: Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>resultScreen(result: result())));
          },
          child: Container(
            child: Center(child: Text('CALCULATE',style: TextStyle(color: color,fontWeight: FontWeight.bold,fontSize: 18),)),
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
  }
}
