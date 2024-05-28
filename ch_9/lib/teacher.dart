import 'package:ch_9/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class teacherScreen extends StatefulWidget {
  const teacherScreen({super.key});

  @override
  State<teacherScreen> createState() => _teacherScreenState();
}

class _teacherScreenState extends State<teacherScreen> {
  String email = '',password = '',type = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
    setState(() {

    });
  }
  loaddata()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    password = sp.getString('password') ?? '';
    type = sp.getString('userType') ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(centerTitle:true,backgroundColor:Colors.deepOrange,title: const Text('Teacher View'),automaticallyImplyLeading: false,),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Email:",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
                Text(email,style: TextStyle(color: Colors.white,fontSize: 18))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Password:",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                Text(password,style: TextStyle(color: Colors.white,fontSize: 18))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("User Type:",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                Text(type,style: TextStyle(color: Colors.white,fontSize: 18))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
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
                            sp.clear();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.deepOrange),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.ads_click_rounded,
                                color: Colors.white,
                              ),
                              Text('Logout', style: TextStyle(color: Colors.white,fontSize: 18,),),
                            ],
                          )))),
            ),
          ],
        ),
      ),
    );
  }
}
