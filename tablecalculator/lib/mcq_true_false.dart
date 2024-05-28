import 'dart:math';
import 'package:flutter/material.dart';
import '../database_helper.dart';
import '../result_show.dart';
import '../dbsqflite/model.dart';

class QuizTrueFalse extends StatefulWidget {
  QuizTrueFalse({required this.numberAsString, required this.question});

  final String numberAsString;
  final int question;

  @override
  _QuizTrueFalseState createState() => _QuizTrueFalseState();
}

class _QuizTrueFalseState extends State<QuizTrueFalse> {
  late double number;  // Use late to assign it later

  @override
  void initState() {
    super.initState();
    // Convert the String to a double when the widget is initialized
    number = double.parse(widget.numberAsString);
    generateQuestion();
  }

  DatabaseHelper databaseHelper = DatabaseHelper();
  Random r1 = Random();
  List<bool> data = [];
  int a = 0;
  bool isTrueAnswer = false;
  bool clr1 = true;
  bool clr2 = true;
  bool ans1 = false;
  bool ans2 = false;
  bool v = true;
  bool btnvisible = false;
  int chang = 1;


  late String questionText;

  void generateQuestion() {
    a = r1.nextInt(10) + 1;
    isTrueAnswer = r1.nextBool(); // Randomize whether it's True or False
    clr1 = true;
    clr2 = true;
    ans1 = false;
    ans2 = false;
    double re = number * a;
    if (isTrueAnswer) {
      questionText = "$number x $a = $re";
    } else {
      int wrongAnswer = (r1.nextInt(10) + 1) * a;
      questionText = "$number x $a = $wrongAnswer";
    }
  }
  void moveToNextQuestion() {
    setState(() {
      generateQuestion();
      clr1 = true;
      clr2 = true;
      ans1 = false;
      ans2 = false;
      chang++;
    });
  }

  int countBoolList(List<bool> boolList) {
    int count = 0;
    for (int i = 0; i < boolList.length; i++) {
      if (boolList.elementAt(i) == true) {
        count++;
      }
    }
    return count;
  }

  int countBoolFalseList(List<bool> boolList) {
    int count = 0;
    for (int i = 0; i < boolList.length; i++) {
      if (boolList.elementAt(i) == false) {
        count++;
      }
    }
    return count;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Table Generator Game',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            v == true
                ? Padding(
              padding: const EdgeInsets.only(
                top: 200,
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    number = double.parse(widget.numberAsString);
                    generateQuestion();
                    v = false;
                    btnvisible = true;
                  });
                },
                child: Center(
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFF1D1E33)),
                    child: const Center(
                      child: Text(
                        "Start Quiz!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
                : const SizedBox(
              height: 0,
            ),
            v == false
                ? Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            chang.toString(),
                            style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        questionText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
                : const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Visibility(
                      visible: btnvisible,
                      child: TextButton(
                        child: const Text(
                          "True",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            if (isTrueAnswer) {
                              ans1 = true;
                              clr1 = false;
                              data.add(true);
                            } else {
                              data.add(false);
                              clr1 = false;
                              ans2 = true;
                              clr2 = false;
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                          clr1 ? (Colors.grey) : (ans1 ? Colors.green : Colors.red),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Visibility(
                      visible: btnvisible,
                      child: TextButton(
                        child: const Text(
                          "False",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(() {
                            if (!isTrueAnswer) {
                              ans2 = true;
                              clr2 = false;
                              data.add(true);
                            } else {
                              data.add(false);
                              clr2 = false;
                              ans1 = true;
                              clr1 = false;
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                          clr2 ? (Colors.grey) : (ans2 ? Colors.green : Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: btnvisible,
              child: chang == widget.question
                  ? Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)),
                  width: MediaQuery.of(context).size.width - 70,
                  child: MaterialButton(
                    color: Colors.red.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    onPressed: () async {
                      final memo = QuizModel(
                        totalquestion: data.length.toString(),
                        right: countBoolList(data).toString(),
                        wrong: countBoolFalseList(data).toString(),
                      );

                      await databaseHelper.insertMemo(memo);
                      var memos = await databaseHelper.fetchMemos();
                      print(memos[0].totalquestion);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShowResult(
                            data: data,
                            totalquestions: widget.question,
                          ),
                        ),
                      );
                    },
                    child: const Text("Show Result"),
                  ),
                ),
              )
                  : Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: MediaQuery.of(context).size.width - 70,
                  child: MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: moveToNextQuestion,
                    child: const Text("Next Question", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
