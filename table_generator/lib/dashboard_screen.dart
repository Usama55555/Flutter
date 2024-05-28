import 'package:flutter/material.dart';
import 'package:table_generator/components.dart';
import 'package:table_generator/result_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}
double cal = 0;
double answer = 0;
enum Generator {
  table,
  quiz,
}

class _DashboardScreenState extends State<DashboardScreen> {
  final Color color = Colors.white;
  late int currentslidervalue = 3;
  late Generator select = Generator.table;
  var lower = 1;
  var upper = 10;

  List<double> results = [];
  late int i;

  void result() {
    results.clear();
    for (i = lower; i <= upper; i++) {
      int currentResult = currentslidervalue.toInt() * i;
      results.add(currentResult.toDouble()); // Change this line
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => resultScreen(
          result: results,
          current: currentslidervalue,
          lower: lower,
          upper: upper,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Table Generator',
          ),
          foregroundColor: color,
          backgroundColor: const Color(0xFF0A0E21),
        ),
        backgroundColor: const Color(0xFF0A0E21),
        body: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                select = Generator.table;
                              });
                            },
                            child: container(
                                col: select == Generator.table
                                    ? const Color(0xFF1D1E33)
                                    : const Color(0xFF111328),
                                widget: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.table_view_rounded,
                                      size: 50,
                                      color: color,
                                    ),
                                    Text('Generate Table',
                                        style: TextStyle(color: color))
                                  ],
                                )),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                select = Generator.quiz;
                              });
                            },
                            child: container(
                                col: select == Generator.quiz
                                    ? const Color(0xFF1D1E33)
                                    : const Color(0xFF111328),
                                widget: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.format_color_text,
                                      size: 50,
                                      color: color,
                                    ),
                                    Text(
                                      'Quiz',
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
                      widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Select table number you want to print',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      Text(
                        currentslidervalue.round().toString(),
                        style: TextStyle(
                            color: color,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Slider(
                          min: 2,
                          max: 10,
                          activeColor: Colors.blueGrey,
                          inactiveColor: Colors.grey,
                          thumbColor: Colors.redAccent,
                          value: currentslidervalue.toDouble(),
                          onChanged: (double value) {
                            currentslidervalue = value.toInt();
                            setState(() {});
                          })
                    ],
                  )),
                  Expanded(
                    child: Row(
                      children: [
                        container(
                            widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Lower Limit',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                              lower.toString(),
                              style: TextStyle(
                                  color: color,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundicon(
                                  onpress: () {
                                    lower -= 1;
                                    setState(() {});
                                  },
                                ),
                                roundicon(
                                  ico: Icon(
                                    Icons.add,
                                    color: color,
                                  ),
                                  onpress: () {
                                    lower += 1;
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ],
                        )),
                        container(
                            widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Upper Limit',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              upper.toString(),
                              style: TextStyle(
                                  color: color,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                roundicon(
                                  onpress: () {
                                    upper -= 1;
                                    setState(() {});
                                  },
                                ),
                                roundicon(
                                  ico: Icon(
                                    Icons.add,
                                    color: color,
                                  ),
                                  onpress: () {
                                    upper += 1;
                                    setState(() {});
                                  },
                                ),
                              ],
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: InkWell(
                  onTap: (){
                    result();
                    setState(() {

                    });
                  },
                  child: container(
                      col: Colors.redAccent,
                      widget: Center(
                          child: Text(
                        'CALCULATE',
                        style: TextStyle(
                            color: color,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ))),
                ))
          ],
        ),
      ),
    );
  }
}
