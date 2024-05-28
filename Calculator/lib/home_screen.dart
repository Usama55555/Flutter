import 'package:calculator/components.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
var input = '';
var answer = '';
class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Align(alignment: Alignment.bottomRight,child: Text(input,style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                  Text(answer,style: TextStyle(color: Colors.white,fontSize: 25),),
                ],),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        container(text: 'AC', onpress: (){
                          input = '';
                          answer = '';
                          setState(() {

                          });
                        },),
                        container(text: '+/-', onpress: (){
                          input += '+/-';
                          setState(() {

                          });
                        },),
                        container(text: '%', onpress: (){
                          input += '%';
                          setState(() {

                          });
                          },),
                        container(text: '/', onpress: (){
                          input += '/';
                          setState(() {

                          });
                        }, color: Colors.orange,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        container(text: '7', onpress: (){
                          input += '7';
                          setState(() {

                          });
                        },),
                        container(text: '8', onpress: (){
                          input += '8';
                          setState(() {

                          });
                        },),
                        container(text: '9', onpress: (){
                          input += '9';
                          setState(() {

                          });
                        },),
                        container(text: 'x', onpress: (){
                          input += 'x';
                          setState(() {

                          });
                        }, color: Colors.orange,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        container(text: '4', onpress: (){
                          input += '4';
                          setState(() {

                          });
                        },),
                        container(text: '5', onpress: (){
                          input += '5';
                          setState(() {

                          });
                        },),
                        container(text: '6', onpress: (){
                          input += '6';
                          setState(() {

                          });
                        },),
                        container(text: '-', onpress: (){
                          input += '-';
                          setState(() {

                          });
                        }, color: Colors.orange,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        container(text: '1', onpress: (){
                          input += '1';
                          setState(() {

                          });
                        },),
                        container(text: '2', onpress: (){
                          input += '2';
                          setState(() {

                          });
                        },),
                        container(text: '3', onpress: (){
                          input += '3';
                          setState(() {

                          });
                        },),
                        container(text: '+', onpress: (){
                          input += '+';
                          setState(() {

                          });
                        }, color: Colors.orange,),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        container(text: '0', onpress: (){
                          input += '0';
                          setState(() {

                          });
                        },),
                        container(text: '.', onpress: (){
                          input += '.';
                          setState(() {

                          });
                        },),
                        container(text: 'DEL', onpress: (){
                          input = input.substring(0, input.length-1);
                          setState(() {

                          });
                        },),
                        container(text: '=', onpress: (){
                          equalbutton();
                          setState(() {

                          });
                        }, color: Colors.orange,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void equalbutton(){
  String finalbutton = input;
  finalbutton = input.replaceAll('x', '*');
  Parser p = Parser();
  Expression expression = p.parse(finalbutton);
  ContextModel contextModel = ContextModel();

  double eval = expression.evaluate(EvaluationType.REAL, contextModel);
}

