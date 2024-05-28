import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/components/textbox.dart';
import 'package:fyp_orvba/signup/verification.dart';
import 'package:gap/gap.dart';

class userSignup extends StatefulWidget {
  const userSignup({super.key});

  @override
  State<userSignup> createState() => _userSignupState();
}

class _userSignupState extends State<userSignup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Sign Up',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text('Please provide authentic details',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
             Expanded(
                flex: 3,
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                textBox(text: 'Name', icon: Icons.person),
                Gap(15),
                textBox(text: 'Email', icon: Icons.email),
                Gap(15),
                textBox(text: 'Contact', icon: Icons.phone),
                Gap(15),
                textBox(text: 'Password', icon: Icons.lock),
                Gap(15),
                textBox(text: 'Confirm Password', icon: Icons.lock),
              ],),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18),
                  child: Button(text: 'Sign Up', onpress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mobileVerification()));
                  }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
