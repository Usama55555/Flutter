import 'package:facebook/home_screen.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(child: SizedBox(height: 35,)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Center(
                  child: Text(
                'facebook',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.blueAccent.shade700),
              )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: TextFormField(
                style: const TextStyle(fontSize: 19),
                cursorHeight: 4,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.deepOrangeAccent.withOpacity(0.1),
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    hintText: 'Mobile number or email address',
                    hintStyle: const TextStyle(color: Colors.black54, fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent.withOpacity(0.1)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent.withOpacity(0.3)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                style: const TextStyle(fontSize: 19),
                cursorHeight: 4,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.deepOrangeAccent.withOpacity(0.1),
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.black54, fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent.withOpacity(0.1)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent.withOpacity(0.3)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                      child: SizedBox(
                          height: 40,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blueAccent.shade700),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()));
                              },
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )))),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'Forgotten ',
                  style: TextStyle(color: Colors.blueAccent.shade700),
                  children: [
                    TextSpan(
                        text: 'Password?',
                        style: TextStyle(color: Colors.blueAccent.shade700)),
                  ]),
            ),
            Row(
              children: const [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 30),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
                Text(
                  'or',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 30),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: SizedBox(
                        height: 40,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 65),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () {},
                              child: const Text(
                                'Create New Account',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )),
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
