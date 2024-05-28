import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int x = 0;
Random random = Random();


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(10);
            print(x);
            setState(() {});
          },
          backgroundColor: Colors.deepOrange,
          child: const Icon(
            Icons.refresh_outlined,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
              child: Text(
            'Lottery App',
            style: TextStyle(
                fontFamily: 'Raleway', fontSize: 20, color: Colors.white),
          )),
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              'Lottery number is 4',
              style: TextStyle(
                  fontFamily: 'Raleway', fontSize: 20, color: Colors.white),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
              child: Container(
                width: 200,
                color: Color.fromARGB(80, 80, 80, 80),
                child: x==4 ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all, color: Colors.green,),
                    Text('Congratulations you have won the Lottery \n Your Lottery number is $x',textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: Colors.white),),
                  ],

                ) : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red,),
                    Text('Your lottery number is $x \n try again',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),),
                  ],
                )
              ),
            ),
          ],
        )),
      ),
    );
  }
}
