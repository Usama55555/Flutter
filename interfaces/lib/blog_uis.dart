import 'package:flutter/material.dart';

class Miscellaneous extends StatefulWidget {
  const Miscellaneous({super.key});

  @override
  State<Miscellaneous> createState() => _MiscellaneousState();
}

class _MiscellaneousState extends State<Miscellaneous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Blog UIs'),backgroundColor: Colors.deepOrangeAccent,),
      body: PageView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/167703/pexels-photo-167703.jpeg?auto=compress&cs=tinysrgb&w=600',
                        )),),
                    Positioned(
                      bottom: 20.0,
                      left: 20.0,
                      right: 20.0,
                      child: Row(
                        children: const <Widget>[
                          Icon(
                            Icons.slideshow,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10.0),
                          Text(
                            "Technology",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Expanded(
                            child: Text("Oct 21, 2017"),
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const <Widget>[
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("20.2k"),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(Icons.comment),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("2.2k"),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis.",
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/167703/pexels-photo-167703.jpeg?auto=compress&cs=tinysrgb&w=600',
                    )),),
                Container(
                  margin: const EdgeInsets.fromLTRB(16.0, 250.0, 16.0, 16.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10.0),
                      const Text("Oct 21, 2017 By DLohani"),
                      const SizedBox(height: 10.0),
                      const Divider(),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: const <Widget>[
                          Icon(Icons.favorite_border),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("20.2k"),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(Icons.comment),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("2.2k"),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis.",
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aperiam, ullam? Fuga doloremque repellendus aut sequi officiis dignissimos, enim assumenda tenetur reprehenderit quam error, accusamus ipsa? Officiis voluptatum sequi voluptas omnis.",
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );;
  }
}
