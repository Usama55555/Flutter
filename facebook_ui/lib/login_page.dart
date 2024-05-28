import 'package:facebook_ui/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const String id = 'login_page';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 80, right: 80, top: 70, bottom: 30),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.blue.shade700,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Mobile number or email address',
                hintStyle: const TextStyle(fontSize: 15),
                filled: true,
                fillColor: Colors.orangeAccent.withOpacity(.1),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent.withOpacity(.1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent.withOpacity(.1)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(fontSize: 15),
                filled: true,
                fillColor: Colors.orangeAccent.withOpacity(.1),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent.withOpacity(.1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.orangeAccent.withOpacity(.1)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(0, 40),
                      backgroundColor: Colors.blue.shade700),
                  onPressed: () {
                    Navigator.pushNamed(context, Homepage.id);
                  },
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: RichText(
              text: TextSpan(
                  text: 'Forgotten ',
                  style: TextStyle(color: Colors.blue.shade800),
                  children: const [
                    TextSpan(text: 'password '),
                    TextSpan(text: '?')
                  ]),
            ),
          ),
          Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                  child: Text(
                'or',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 25),
                child: TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(0, 40),
                      backgroundColor: Colors.green),
                  onPressed: () {},
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: const TextSpan(text: 'About\t\t', children: [
                  TextSpan(text: 'Help\t\t'),
                  TextSpan(text: 'More')
                ]))
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(text: 'Meta ',style: TextStyle(color: Colors.grey.shade600)),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.black),
                  shape: BoxShape.circle,
                ),
                child: const Center(
                    child: Text(
                  'C',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
              ),
              Text(' 2022',style: TextStyle(color: Colors.grey.shade600),),
            ],
          )
        ],
      ),
    );
  }
}
