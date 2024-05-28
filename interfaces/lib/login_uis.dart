import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login/Signup UIs'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: PageView(
        children: [
          Stack(children: [
            Container(
              color: Colors.grey.withOpacity(.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 300, left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your Email',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key_rounded),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                        child: Text('Forgot Password?'),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.deepOrangeAccent], begin: Alignment.centerLeft, end: Alignment.centerRight),),child: TextButton(onPressed: (){}, child: Text('Log In',style: TextStyle(fontWeight: FontWeight.bold),),style: TextButton.styleFrom(foregroundColor: Colors.white),)),
                      )),
                    ],
                  ),
                  Flexible(child: Align(alignment: Alignment.bottomCenter,child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: RichText(text: TextSpan(text: "Don't have an account ?",style: TextStyle(color: Colors.black),children: [TextSpan(text: ' Signup',style: TextStyle(color: Colors.deepOrangeAccent))]),),
                  )))
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 450),
                child: Container(
                  child: Align(alignment: Alignment.bottomRight,child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text('Login',style: TextStyle(color: Colors.white, fontSize: 23),),
                  )),
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrangeAccent, Colors.orangeAccent], begin: Alignment.topCenter, end: Alignment.bottomCenter),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120))),
                ),
              ),
            ),
          ]),
          Stack(children: [
            Container(
              color: Colors.grey.withOpacity(.1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 300, left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Fullname',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Phone Number',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.deepOrangeAccent], begin: Alignment.centerLeft, end: Alignment.centerRight),),child: TextButton(onPressed: (){}, child: Text('Signup', style: TextStyle(fontWeight: FontWeight.bold),),style: TextButton.styleFrom(foregroundColor: Colors.white),)),
                      )),
                    ],
                  ),
                  Flexible(child: Align(alignment: Alignment.bottomCenter,child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22),
                    child: RichText(text: TextSpan(text: "Already a member ?",style: TextStyle(color: Colors.black),children: [TextSpan(text: ' Signin',style: TextStyle(color: Colors.deepOrangeAccent))]),),
                  )))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 450),
              child: Container(
                child: Align(alignment: Alignment.bottomRight,child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text('Signup For Free',style: TextStyle(color: Colors.white, fontSize: 23),),
                )),
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrangeAccent, Colors.orangeAccent], begin: Alignment.topCenter, end: Alignment.bottomCenter),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(120))),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
