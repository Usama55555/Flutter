import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(drawer: Drawer(child: ListView(children: [UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/pic.jpeg'),),accountName: Text('Mohammad Usama Bilal'), accountEmail: Text('mohammadusamabilal90@gmail.com')),ListTile(leading: Icon(Icons.work),title: Text('Work'),)]),),
        appBar: AppBar(
          title: const Text(
            'facebook',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          bottom: TabBar(unselectedLabelColor: Colors.black,labelColor: Colors.blueAccent.shade700,indicatorColor: Colors.blueAccent.shade700,tabs: [Tab(icon: Icon(Icons.home_rounded),),
            Tab(icon: Icon(Icons.people_outline),),
            Tab(icon: Icon(Icons.store_outlined),),
            Tab(icon: Icon(Icons.person_pin),),
            Tab(icon: Icon(Icons.notifications),),
            Tab(icon: Icon(Icons.menu),),
          ]),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.blueAccent.shade700,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.5),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: PopupMenuButton(
                    color: Colors.grey.withOpacity(0.2),
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    itemBuilder: (context) => [
                          PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(
                                Icons.post_add,
                                color: Colors.black,
                              ),
                              Text(' Post')
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(
                                Icons.menu_book_outlined,
                                color: Colors.black,
                              ),
                              Text(' Story')
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(
                                Icons.video_collection_rounded,
                                color: Colors.black,
                              ),
                              Text(' Reel')
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            children: [
                              Icon(
                                Icons.video_camera_front,
                                color: Colors.black,
                              ),
                              Text(' Live')
                            ],
                          )),
                        ]),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.2),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.5),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(children: [Text('home'),
          Text('Requests'),
          Text('Store'),
          Text('Profile'),
          Text('Notifications'),
          Text('Menu'),
        ]),
      ),
    );
  }
}
