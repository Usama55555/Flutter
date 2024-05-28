import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String id = 'home_page';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue.shade700, fontWeight: FontWeight.w900),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.2),
                child: PopupMenuButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(
                      children: const [
                        Icon(
                          Icons.post_add_rounded,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Post'),
                        ),
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: const [
                        Icon(
                          Icons.menu_book_sharp,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Story'),
                        ),
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: const [
                        Icon(
                          Icons.video_collection,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Reel'),
                        ),
                      ],
                    )),
                    PopupMenuItem(
                        child: Row(
                      children: const [
                        Icon(
                          Icons.video_call_rounded,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Live'),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.2),
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(.2),
                  child: const Icon(
                    Icons.chat,
                    color: Colors.black,
                  )),
            ),
          ],
          bottom: TabBar(
              labelColor: Colors.blue.shade700,
              unselectedLabelColor: Colors.black.withOpacity(.6),
              tabs: const [
                Tab(
                    icon: Icon(
                  Icons.home,
                )),
                Tab(
                    icon: Icon(
                  Icons.people,
                )),
                Tab(
                    icon: Icon(
                  Icons.ondemand_video_sharp,
                )),
                Tab(
                    icon: Icon(
                  Icons.store,
                )),
                Tab(
                    icon: Icon(
                  Icons.notifications_none,
                )),
                Tab(
                    icon: Icon(
                  Icons.menu,
                )),
              ]),
        ),
        body: TabBarView(
          children: [
            Text('Home'),
            Text('Friends'),
            Text('Videos'),
            Text('Market'),
            Text('Notification'),
            Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(.2)),
                child: ListView(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Menu',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              )),
                        ),
                      ),
                      CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(.2),
                          child: Icon(
                            Icons.settings,
                            color: Colors.black,
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(.2),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 5)
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: CircleAvatar(
                                  child: Icon(Icons.person),
                                ),
                              ),
                              Expanded(
                                  child: RichText(
                                      text: TextSpan(
                                          text: 'Mohammad Usama',
                                          children: [
                                    TextSpan(text: ' Bilal')
                                  ]))),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.expand_more_rounded),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: CircleAvatar(
                                  radius: 15,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.black45,
                                ),
                              ),
                              RichText(
                                  text: TextSpan(text: 'Create ', children: [
                                TextSpan(text: 'another profile')
                              ]))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Your shortcuts'),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                minRadius: 20,
                                maxRadius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/5950081/pexels-photo-5950081.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text('John'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            CircleAvatar(
                              minRadius: 20,
                              maxRadius: 30,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/4960396/pexels-photo-4960396.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('Usama'),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              CircleAvatar(
                                minRadius: 20,
                                maxRadius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/4482885/pexels-photo-4482885.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 8),
                                child: Text('Fatima'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(text: TextSpan(text: 'All shortcuts')),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.ondemand_video,
                                    color: Colors.blueAccent,
                                  ),
                                  Text('Video')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 8, top: 8),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.feed_rounded,
                                    color: Colors.blueAccent,
                                  ),
                                  Text('Feeds')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.label,
                                    color: Colors.purple,
                                  ),
                                  Text('Saved')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 8, top: 8),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.people,
                                    color: Colors.teal,
                                  ),
                                  Text('Friends')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.groups,
                                    color: Colors.blueAccent,
                                  ),
                                  Text('Groups')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 8, top: 8),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.store_mall_directory_rounded,
                                    color: Colors.blueAccent,
                                  ),
                                  Text('Marketplace')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.blue,
                                  ),
                                  Text('Memories')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 8, top: 8),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.flag,
                                    color: Colors.deepOrange,
                                  ),
                                  Text('Pages')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.video_collection,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Text('Reels')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 8, bottom: 8, top: 8),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.edit_calendar_outlined,
                                    color: Colors.red,
                                  ),
                                  Text('Events')
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 5)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(style: TextButton.styleFrom(minimumSize: const Size(0, 45), maximumSize: const Size(0, 65), foregroundColor: Colors.black,backgroundColor: Colors.grey.withOpacity(.3)),onPressed: (){}, child: Text('See more')),
                  )),
                  Divider(),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.help, color: Colors.blueGrey,),
                    ),
                    Expanded(child: Text('Help & support')),
                    Icon(Icons.expand_more_rounded)
                  ],),
                  Divider(),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.settings, color: Colors.blueGrey,),
                    ),
                    Expanded(child: Text('Help & support')),
                    Icon(Icons.expand_more_rounded)
                  ],),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    child: Expanded(child: TextButton(style: TextButton.styleFrom(minimumSize: Size(0, 45), maximumSize: Size(0 , 65), foregroundColor: Colors.black, backgroundColor: Colors.grey.withOpacity(.3)), onPressed: (){}, child: Text('Log out'))),
                  )
                ])),
          ],
        ),
      ),
    );
  }
}
