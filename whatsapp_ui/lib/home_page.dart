import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('WhatsApp'),
            actions: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.search),
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(child: Text('New Group')),
                        PopupMenuItem(child: Text('Settings')),
                        PopupMenuItem(child: Text('Logout')),
                      ]),
            ],
            backgroundColor: Colors.teal,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'Chats',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ]),
          ),
          body: TabBarView(children: [
            const Center(child: Icon(Icons.camera_alt)),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/838413/pexels-photo-838413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title: Text('Mohammad Usama'),
                    subtitle: Text('Come back to Allah'),
                    trailing: Text('10:28'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  if(index == 0)
                    {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/838413/pexels-photo-838413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                                child: Icon(Icons.add,color: Colors.teal,),
                              ),
                              title: Text('My status'),
                              subtitle: Text('Tap to add status update'),
                            ),
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Recent Updates'),
                            ),
                          ),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 2.5),shape: BoxShape.circle),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/838413/pexels-photo-838413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                              ),
                            ),
                            title: const Text('Mohammad Usama'),
                            subtitle: const Text('12 minutes ago'),
                          ),
                        ],
                      );
                    }
                  else
                    {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 2.5),shape: BoxShape.circle),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/838413/pexels-photo-838413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                          ),
                        ),
                        title: const Text('Mohammad Usama'),
                        subtitle: const Text('12 minutes ago'),
                      );
                    }
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/838413/pexels-photo-838413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                    ),
                    title: Text(index % 3 == 0 ? 'Mohammad Usama' : 'Awais'),
                    subtitle: Text(index % 2 == 0 ? 'Yesterday, 8:05 AM' : 'June 30, 6:36PM'),
                    trailing: Icon( index % 2 == 0 ? Icons.call : Icons.video_call),
                  );
                }),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.chat,
              color: Colors.white,
            ),
          ),
        ));
  }
}
