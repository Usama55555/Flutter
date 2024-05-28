import 'package:flutter/material.dart';
import 'package:quiz_app/color.dart';
import 'package:quiz_app/image.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/text_style.dart';
import 'package:flutter/cupertino.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;

  ResultScreen({
    required this.totalQuestions,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [blue, darkBlue],
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: lightgrey, width: 2),
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const App()));
                      },
                      icon: const Icon(
                        CupertinoIcons.xmark,
                        color: Colors.white,
                        size: 28,
                      )),
                ),

                Flexible(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(child: Image.network(result)),
                      Center(
                        child: normalText(
                          color: Colors.white,
                          size: 24,
                          text: 'Quiz Results',
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: normalText(
                          color: lightgrey,
                          size: 18,
                          text: 'You answered $correctAnswers out of $totalQuestions questions correctly.',
                        ),
                      ),
                      const SizedBox(height: 20),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
