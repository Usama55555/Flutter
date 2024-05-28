import 'package:ch_9/info_screen.dart';
import 'package:ch_9/student.dart';
import 'package:ch_9/teacher.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final emailController = TextEditingController();
  final passwordcontroller = TextEditingController();
  //var otpcontroller = TextEditingController();
    bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text('Shared Preference'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: passwordcontroller,
              obscureText: passwordVisible,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: IconButton(onPressed: (){
                  passwordVisible = !passwordVisible;
                  setState(() {
                    
                  });
                }, icon: Icon(
                  passwordVisible ? Icons.visibility : Icons.visibility_off
                ))
              ),
            ),
            // TextFormField(
            //   controller: otpcontroller,
            //   decoration: InputDecoration(
            //     hintText: 'OTP',
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextButton(
                          onPressed: () async{
                            SharedPreferences sp = await SharedPreferences.getInstance();
                            // sp.setString('name', 'M. Usama');
                            // sp.setInt('age', 22);
                            // print(sp.getString('name')! + sp.getInt('age').toString());

                            sp.setString('email', emailController.text.toString());
                            sp.setString('password', passwordcontroller.text.toString());
                            sp.setString('userType','teacher');
                            sp.setBool('login', true);
                            if(sp.getString('userType') == 'student'){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>studentScreen()));
                            }
                            else if(sp.getString('userType') == 'teacher'){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>teacherScreen()));
                            }
                            else{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>infoScreen()));
                            }
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepOrange),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.ads_click_rounded,
                                color: Colors.white,
                              ),
                              Text('Login', style: TextStyle(color: Colors.white,fontSize: 18,),),
                            ],
                          )))),
            )
          ],
        ),
      ),
    );
  }
  Future<void> usama()async{
    await Future.delayed(Duration(seconds: 3));
    print('Delayed');
  }
}
