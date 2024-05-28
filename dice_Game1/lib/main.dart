import 'package:flutter/material.dart';
import 'player.dart';
import 'dart:math';
void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  List<Player> myPlayers =[new Player(),new Player(), new Player(), new Player()];
  int counter =0;
  int randomNum=1;
  int s1=0,s2=0,s3=0,s4=0;
  void resetScore(){
    s1=0;
    s2=0;
    s3=0;
    s4=0;
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Ludo Game'),
        actions: [
          IconButton(onPressed: (){
              for(int i=0; i<=3; i++){
                setState(() {
                  myPlayers[i].reset();
                  resetScore();
                });
              }

            },
              icon: Icon(Icons.restart_alt)),
          SizedBox(width: _width*0.03,),
        ],
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: _width*0.5,
                    height: _height*0.36,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(
                            color: Colors.white,
                            width: 5
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player 1',style: playerName,),
                        Text('Score: $s1')
                      ],
                    ),
                  ),
                  Container(
                    width: _width*0.5,
                    height: _height*0.36,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(
                            color: Colors.white,
                            width: 5
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player 2',style: playerName,),
                        Text('Score: $s2')
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: _width*0.5,
                    height: _height*0.36,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            width: 5
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player 3',style: playerName,),
                        Text('Score: $s3')
                      ],
                    ),
                  ),
                  Container(
                    width: _width*0.5,
                    height: _height*0.36,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                            color: Colors.white,
                            width: 5
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Player 4',style: playerName,),
                        Text('Score: $s4')
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _height*0.04,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    randomNum = Random().nextInt(6)+1;
                    myPlayers[counter].addScore(randomNum);
                    if(counter == 0){
                      setState(() {
                        s1 = myPlayers[counter].getScore();
                      });
                    }
                    else if(counter == 1){
                      setState(() {
                        s2 = myPlayers[counter].getScore();
                      });
                    }
                    else if(counter == 2){
                      setState(() {
                        s3 = myPlayers[counter].getScore();
                      });
                    }
                    else{
                      setState(() {
                        s4 = myPlayers[counter].getScore();
                      });
                    }
                    counter++;
                    if(counter>3){
                      counter=0;
                    }

                  });
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 30,
                  backgroundImage: AssetImage('images/dice$randomNum.png'),

                ),

              )
            ],
          ),
        ),
      ),
    );
  }


}

TextStyle playerName = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

TextStyle scoreText = TextStyle(
    fontSize: 14,
    color: Colors.white
);
