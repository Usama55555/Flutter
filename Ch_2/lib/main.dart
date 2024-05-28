import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [

                Text('UB_Creatives'),
                SizedBox(
                  width: 50,
                ),
                Icon(Icons.password),
                SizedBox(
                  width: 50,
                ),
                Text('Hello')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.deepOrange,
              child: const Center(
                child: Image(image: AssetImage('images/featured.png')),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 200,
              color: const Color.fromARGB(60, 60, 60, 60),
              child: const Center(
                child: Text('Flutter Kings'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Mohammad Usama Bilal'),
            const SizedBox(
              height: 10,
            ),
            const Text('Mohammad Awais Ali'),
          ],
        )),
        backgroundColor: Colors.deepOrangeAccent.shade200,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text('My App', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25, fontFamily: 'Pacifo', color: Colors.white, decoration: TextDecoration.lineThrough),),
          ),
        ),
      ),
    );
  }
}
