import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    height: 40,
                    width: 40,
                    image: AssetImage('images/logo.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        ' Maintenance',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Rubik Medium',
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        ' Box',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepOrangeAccent,
                            fontFamily: 'Rubik Medium',
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'Rubik Medium',
                    fontSize: 20,
                    fontWeight: FontWeight.w200),
              )),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                'I am Flutter Developer \n UB_Creatives',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Rubik Regular',
                  fontSize: 12,
                ),
              )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.black12,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.black12,
                    prefixIcon: Icon(Icons.lock_open_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Rubik Regular'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: 40,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik Regular',
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontFamily: 'Rubik Regular'),
                  ),
                  Text(
                    ' Sign up',
                    style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontFamily: 'Rubik Regular'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
