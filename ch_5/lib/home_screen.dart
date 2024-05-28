import 'package:ch_5/screen_two.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  static const String id = 'home_screen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //child: DrawerHeader(child: Text('Usama')),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(decoration: BoxDecoration(color: Colors.green),currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),),accountName: Text('Mohammad Usama'), accountEmail: Text('mohammadusamabilal90@gmail.com'),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('HomeScreen'),
              onTap: (){
                Navigator.pushNamed(context, Homescreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month_outlined),
              title: Text('ScreenTwo'),
              onTap: (){
                Navigator.pushNamed(context, Screentwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Logout'),
              onTap: (){},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('UB_Creatives')),
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, Screentwo.id);
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const Screentwo()));
            },
            child: const Text('ScreenTwo')),
      ),
    );
  }
}
