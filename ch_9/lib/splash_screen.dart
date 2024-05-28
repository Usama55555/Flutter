import 'dart:async';

import 'package:ch_9/home_screen.dart';
import 'package:ch_9/info_screen.dart';
import 'package:ch_9/student.dart';
import 'package:ch_9/teacher.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    login();

  }
  login()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool login = sp.getBool('login') ?? false;
    String userType = sp.getString('userType') ?? '';

    if(login){
      if(userType == 'student'){
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>studentScreen()));
        });
      }else if(userType == 'teacher'){
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>teacherScreen()));
        });
      }
      else{
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        });
      }
    }else{
      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(child: Text('UB_Creatives', style: TextStyle(decoration:TextDecoration.lineThrough,color: Colors.white,fontSize: 30,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic),)),
    );
  }
}
