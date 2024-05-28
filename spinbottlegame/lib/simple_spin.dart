import 'package:flutter/material.dart';
import 'package:spinbottlegame/playersscreen.dart';

class DataScreen extends StatefulWidget {
  final int numberOfPlayers;

  DataScreen({required this.numberOfPlayers});

  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  List<String> playerNames = [];
  String selectedBottleImage = "images/bottle.png"; // Default bottle image path

  void initState() {
    super.initState();
    playerNames = List.filled(widget.numberOfPlayers, '');
  }

  void changeBottleImage(String imagePath) {
    setState(() {
      selectedBottleImage = imagePath;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Enter Player Names'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              for (var i = 0; i < widget.numberOfPlayers; i++)
                TextField(
                  onChanged: (name) {
                    playerNames[i] = name;
                  },
                  decoration: InputDecoration(labelText: 'Player ${i + 1} Name'),
                ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Flexible(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.redAccent, Colors.indigo],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.indigo,
                          blurRadius: 4,
                          offset: Offset(4, 8),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(alignment: Alignment.centerLeft,child: IconButton(onPressed: (){}, icon: const Icon(Icons.image,color: Colors.white,),)),
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Column(
                                  children: <Widget>[
                                    const ListTile(
                                      title: Text("Select a Bottle"),
                                    ),
                                    ListTile(
                                      leading: Image.asset('images/bottle.png',height: 35,width: 35,),
                                      title: const Text("Bottle 1"),
                                      onTap: () {
                                        changeBottleImage("images/bottle.png");
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: Image.asset('images/bottle2.png',height: 35,width: 35,),
                                      title: const Text("Bottle 2"),
                                      onTap: () {
                                        changeBottleImage("images/bottle2.png"); // Change to your image path
                                        Navigator.pop(context);
                                      },),
                                    ListTile(
                                      leading: Image.asset('images/bottle3.png',height: 35,width: 35,),
                                      title: const Text("Bottle 3"),
                                      onTap: () {
                                        changeBottleImage("images/bottle3.png"); // Change to your image path
                                        Navigator.pop(context);
                                      },),
                                    ListTile(
                                      leading: Image.asset('images/bottle4.png',height: 35,width: 35,),
                                      title: const Text("Bottle 4"),
                                      onTap: () {
                                        changeBottleImage("images/bottle4.png"); // Change to your image path
                                        Navigator.pop(context);
                                      },),
                                    // Add more bottle options here
                                  ],
                                );
                              },
                            );
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Select Bottle Image",style: TextStyle(color: Colors.white, fontSize: 18),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Flexible(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.redAccent, Colors.indigo],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.indigo,
                          blurRadius: 4,
                          offset: Offset(4, 8),
                        )
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlayerListScreen(allplayers: playerNames, bottleImagePath: selectedBottleImage),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Align(alignment: Alignment.centerLeft,child: IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded,color: Colors.white,),)),
                          const Text(
                            'Start Game',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // Button to change the bottle image

            ],
          ),
        ),
      ),
    );
  }
}
