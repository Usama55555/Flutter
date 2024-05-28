import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pinput/pinput.dart';
import 'package:readmore/readmore.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pub.dev'),
      ),
      body: Column(
        children: [
          const Icon(Icons.home),
          const Icon(CupertinoIcons.home),
          const Icon(FontAwesomeIcons.houseUser),
          const ReadMoreText(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            trimLines: 2,
            trimMode: TrimMode.Line,
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(fontSize: 12, color: Colors.blueAccent),
            trimCollapsedText: 'Show more',
            lessStyle: TextStyle(fontSize: 12, color: Colors.red),
            style: TextStyle(color: Colors.black),
          ),
          const Badge(
            label: Text('5'),
            isLabelVisible: true,
            smallSize: 7.5,
            largeSize: 15,
            child: Icon(Icons.settings),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43.0),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Horizon',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('AWESOME'),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText('DIFFERENT'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
          AnimatedTextKit(
            animatedTexts: [
            TypewriterAnimatedText('Muhammad Usama Bilal',cursor: '_',textStyle: TextStyle(fontSize: 25)),
          ],
            totalRepeatCount: 5,
            pause: const Duration(seconds: 1),
          ),
          Pinput(
            length: 6,
            keyboardType: TextInputType.phone,
            pinAnimationType: PinAnimationType.fade,
            focusedPinTheme: PinTheme(textStyle: const TextStyle(color: Colors.white),width: 50,height: 60,decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade900),color: Colors.blueAccent,borderRadius: BorderRadius.circular(10))),
            submittedPinTheme: PinTheme(textStyle: const TextStyle(color: Colors.white),width: 50,height: 60,decoration: BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(10))),
            followingPinTheme: PinTheme(textStyle: const TextStyle(color: Colors.white),width: 50,height: 60,decoration: BoxDecoration(color: Colors.blueAccent.withOpacity(.4),borderRadius: BorderRadius.circular(10))),
            obscuringCharacter: '*',
            closeKeyboardWhenCompleted: true,
            obscureText: true,
            enabled: true,
          ),
        ],
      ),
    );
  }
}
