import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Profile UIs'),backgroundColor: Colors.deepOrangeAccent,),
      body: PageView(
        children: [
          Stack(
            children: [
              Container(decoration: const BoxDecoration(
                image: DecorationImage(alignment: Alignment.topCenter, image: AssetImage('Assets/my.jpeg')),
              ),),
              ListView(
                children: [Padding(
                  padding: const EdgeInsets.only(top: 300,),
                  child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.horizontal(left: Radius.circular(60),right: Radius.circular(60))),child: Column(
                    children: [
                      Center(child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text('M. USAMA BILAL', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      )),
                      Text('Freelancer', style: TextStyle(fontStyle: FontStyle.italic),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Projects'),
                                  Text('1135', style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Hourly Rate'),
                                  Text('50\$', style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text('Location'),
                                  Text('Khanewal', style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(height: 40,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.lightBlue)),child: TextButton(onPressed: (){}, child: Text('VIEW PROFILE',style: TextStyle(fontWeight: FontWeight.bold),),style: TextButton.styleFrom(foregroundColor: Colors.black),)),
                          )),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Container(height: 40,decoration: BoxDecoration(color: Colors.lightBlue,borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.lightBlue)),child: TextButton(onPressed: (){}, child: Text('MESSAGE',style: TextStyle(fontWeight: FontWeight.bold),),style: TextButton.styleFrom(foregroundColor: Colors.white),)),
                          )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Row(children: [
                          Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/16059681/pexels-photo-16059681/free-photo-of-clouds-over-mountains.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                          Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/4220967/pexels-photo-4220967.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                          Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/3850526/pexels-photo-3850526.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                        ],),
                      ),
                      Row(children: [
                        Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/1995730/pexels-photo-1995730.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                        Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/2524874/pexels-photo-2524874.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                        Expanded(child: Image(image: NetworkImage('https://images.pexels.com/photos/3284167/pexels-photo-3284167.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                      ],),
                    ],
                  ),),
                ),
              ]),
            ],
          ),
          SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                SizedBox(
                  height: 420,
                  width: double.infinity,
                  child: Container(decoration: BoxDecoration( image: DecorationImage(fit: BoxFit.fill,image: AssetImage('Assets/my.jpeg',))) ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.only(top: 16.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(left: 96.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "M. USAMA BILAL",
                                        style:
                                        Theme.of(context).textTheme.titleLarge,
                                      ),
                                      const ListTile(
                                        contentPadding: EdgeInsets.all(0),
                                        title: Text("Software Engineer"),
                                        subtitle: Text("App Developer"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: const <Widget>[
                                          Text("285"),
                                          Text("Likes")
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const <Widget>[
                                          Text("3025"),
                                          Text("Comments")
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const <Widget>[
                                          Text("650"),
                                          Text("Favourites")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    image: AssetImage('Assets/my.jpeg'), fit: BoxFit.cover)),
                            margin: const EdgeInsets.only(left: 16.0),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Column(
                          children: const <Widget>[
                            ListTile(
                              title: Text("User information"),
                            ),
                            Divider(),
                            ListTile(
                              title: Text("Email"),
                              subtitle: Text("mohammadusamabilal90@gmail.com"),
                              leading: Icon(Icons.email),
                            ),
                            ListTile(
                              title: Text("Phone"),
                              subtitle: Text("+92311-1611854"),
                              leading: Icon(Icons.phone),
                            ),
                            ListTile(
                              title: Text("Website"),
                              subtitle: Text("https://www.UB_creatives.com"),
                              leading: Icon(Icons.web),
                            ),
                            ListTile(
                              title: Text("About"),
                              subtitle: Text(
                                  "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                              leading: Icon(Icons.person),
                            ),
                            ListTile(
                              title: Text("Joined Date"),
                              subtitle: Text("15 February 2019"),
                              leading: Icon(Icons.calendar_view_day),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
