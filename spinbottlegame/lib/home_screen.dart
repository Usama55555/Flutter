import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:spinbottlegame/simple_spin.dart';
import 'package:spinbottlegame/truth_dare.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  AudioPlayer audioPlayer = AudioPlayer();
  double _currentSliderValue = 2;
  bool isSoundOn = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.indigo,title: const Text('Spin Bottle Game'),actions: [Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(

              onPressed: () {

                setState(() {
                  isSoundOn = !isSoundOn;
                  if (isSoundOn) {
                    audioPlayer.play(AssetSource('music.mp3'));
                  } else {
                    audioPlayer.stop();
                  }
                });


              },
              icon: Icon(
                isSoundOn ? Icons.volume_up : Icons.volume_off,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),],),
        body: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(opacity: 90,fit: BoxFit.fill,image: NetworkImage('images/tdd.jpg'))
          // ),
          child: Stack(children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                            ]),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DataScreen(numberOfPlayers: _currentSliderValue.round())));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Simple Spin',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ))),
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
                            ]),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DataScreent(numberOfPlayers: _currentSliderValue.round())));
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Truth & Dare',
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Slider(
                    activeColor: Colors.indigo,
                    value: _currentSliderValue,
                    min: 1,
                    max: 8,
                    divisions: 7,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                ),
                const Text(
                  'How many Players you want to Play?',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.indigo),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact us',
                      style: TextStyle(
                          decorationThickness: 2.5,
                          decoration: TextDecoration.underline,
                          color: Colors.indigo,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
  @override
  void dispose() {
    audioPlayer.dispose(); // Dispose of the audio player instance when done
    super.dispose();
  }
}
