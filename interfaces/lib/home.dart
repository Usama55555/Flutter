import 'package:flutter/material.dart';
import 'package:interfaces/ecommerce_uis.dart';
import 'package:interfaces/login_uis.dart';
import 'package:interfaces/blog_uis.dart';
import 'package:interfaces/profile_uis.dart';
import 'package:interfaces/travel_uis.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('User Interfaces'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepOrangeAccent.withOpacity(.8),
          Colors.orangeAccent.withOpacity(.8)
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: Colors.deepOrange.shade900),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Colors.deepOrangeAccent.withOpacity(.2),
                              foregroundColor: Colors.deepOrange.shade900),
                          child: const Text('Login/Signup UIs', style: TextStyle(fontWeight: FontWeight.bold),),
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: Colors.deepOrange.shade900),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Colors.deepOrangeAccent.withOpacity(.2),
                              foregroundColor: Colors.deepOrange.shade900),
                          child: const Text('Profile UIs', style: TextStyle(fontWeight: FontWeight.bold),),
                        )),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: Colors.deepOrange.shade900),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Miscellaneous()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Colors.deepOrangeAccent.withOpacity(.2),
                              foregroundColor: Colors.deepOrange.shade900),
                          child: const Text('Blog UIs', style: TextStyle(fontWeight: FontWeight.bold),),
                        )),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.5, color: Colors.deepOrange.shade900),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Travel()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Colors.deepOrangeAccent.withOpacity(.2),
                              foregroundColor: Colors.deepOrange.shade900),
                          child: const Text('Travel App UIs', style: TextStyle(fontWeight: FontWeight.bold),),
                        )),
                  )),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.5, color: Colors.deepOrange.shade900),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Bank()));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor:
                                Colors.deepOrangeAccent.withOpacity(.2),
                            foregroundColor: Colors.deepOrange.shade900),
                        child: const Text('Ecommerce UIs', style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
