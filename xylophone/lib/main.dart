import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

Color pickerColor = Color(0xff443a49);
Color currentColor = Color(0xff443a49);

class _MyAppState extends State<MyApp> {
  List<Color> buttonColors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.lime,
    Colors.brown,
    Colors.blueAccent,
    Colors.purple,
  ];

  List<String> buttonSounds = [
    'assets_note1.wav',
    'assets_note2.wav',
    'assets_note3.wav',
    'assets_note4.wav',
    'assets_note5.wav',
    'assets_note6.wav',
    'assets_note7.wav',
  ];

  List<double> scaleFactors = [
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
  ];

  List<double> temporaryScaleFactors = [
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
  ];

  double temporarySliderValue = 1.0; // Temporary slider value

  List<int> currentSoundNumbers = [1, 2, 3, 4, 5, 6, 7]; // Store current sound numbers

  void changeColor(int pos, Color color) {
    setState(() {
      buttonColors[pos - 1] = color;
    });
  }

  void changeSize(int pos, double scale) {
    setState(() {
      temporaryScaleFactors[pos - 1] = scale;
    });
  }

  void confirmColorAndSize(int pos) {
    setState(() {
      buttonColors[pos - 1] = currentColor;
      scaleFactors = temporaryScaleFactors.toList(); // Update scaleFactors
    });
  }

  void changeSound(int pos) {
    showDialog(
      builder: (context) {
        return AlertDialog(
          title: const Text('Change Sound'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Select a new sound for the button:'),
              for (int i = 1; i <= 7; i++)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonSounds[pos - 1] = 'assets_note$i.wav';
                      currentSoundNumbers[pos - 1] = i; // Update the current sound number
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Sound $i'),
                ),
            ],
          ),
        );
      },
      context: context,
    );
  }

  void resetSettings() {
    setState(() {
      // Reset buttonColors to default colors
      buttonColors = [
        Colors.red,
        Colors.yellow,
        Colors.green,
        Colors.lime,
        Colors.brown,
        Colors.blueAccent,
        Colors.purple,
      ];

      // Reset scaleFactors to default values
      temporaryScaleFactors = [
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
      ];

      // Reset buttonSounds to default sounds
      buttonSounds = [
        'assets_note1.wav',
        'assets_note2.wav',
        'assets_note3.wav',
        'assets_note4.wav',
        'assets_note5.wav',
        'assets_note6.wav',
        'assets_note7.wav',
      ];

      // Reset temporarySliderValue to 1.0
      temporarySliderValue = 1.0;

      currentSoundNumbers = [1, 2, 3, 4, 5, 6, 7]; // Reset current sound numbers
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: resetSettings,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              getView(1),
              getView(2),
              getView(3),
              getView(4),
              getView(5),
              getView(6),
              getView(7),
            ],
          ),
        ),
      ),
    );
  }

  Widget getView(int pos) {
    return Expanded(
      child: GestureDetector(
        onLongPress: () {
          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(0.0, 0.0, 1.0, 1.0),
            items: <PopupMenuEntry>[
              PopupMenuItem(
                onTap: () {
                  currentColor = buttonColors[pos - 1];
                  showDialog(
                    builder: (context) => AlertDialog(
                      title: const Text('Pick a color!'),
                      content: SingleChildScrollView(
                        child: ColorPicker(
                          pickerColor: currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              currentColor = color;
                            });
                          },
                        ),
                      ),
                      actions: <Widget>[
                        ElevatedButton(
                          child: const Text('Got it'),
                          onPressed: () {
                            confirmColorAndSize(pos);
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    context: context,
                  );
                },
                child: Text('Change Color'),
              ),
              PopupMenuItem(
                onTap: () {
                  temporarySliderValue = temporaryScaleFactors[pos - 1];
                  showDialog(
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setState) {
                          return AlertDialog(
                            title: const Text('Change Size'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Scale Factor: ${temporarySliderValue.toStringAsFixed(2)}'),
                                Slider(
                                  value: temporarySliderValue,
                                  min: 0.1,
                                  max: 2.0,
                                  onChanged: (value) {
                                    setState(() {
                                      temporarySliderValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('Got it'),
                                onPressed: () {
                                  changeSize(pos, temporarySliderValue);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    context: context,
                  );
                },
                child: Text('Change Size'),
              ),
              PopupMenuItem(
                onTap: () {
                  changeSound(pos);
                },
                child: Text('Change Sound'),
              ),
            ],
          );
        },
        child: Transform.scale(
          scale: temporaryScaleFactors[pos - 1],
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(buttonColors[pos - 1]),
            ),
            onPressed: () {
              playSound(pos);
            },
            child: ListTile(
              title: Text('Long-Press for Customization'),
              subtitle: Text('Current Sound: ${currentSoundNumbers[pos - 1]}'),
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int pos) {
    final audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource(buttonSounds[pos - 1]));
  }
}
