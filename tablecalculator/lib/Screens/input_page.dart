// input_page.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tablecalculator/Components/BottomContainer_Button.dart';
import 'package:tablecalculator/mcqs_page.dart';
import 'package:tablecalculator/true_false_page.dart';
import '../Components/Icon_Content.dart';
import '../Components/Reusable_Bg.dart';
import '../Components/RoundIcon_Button.dart';
import '../constants.dart';
import 'Results_Page.dart';
import '../calculator_brain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.male;
  int number = 2;
  int number2 = 4;
  int Start = 1;
  int End = 10;
  late String selectedButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Table Generator'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableBg(
                      colour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                        myicon: Icons.table_view_rounded,
                        text: '\nGenerate Table',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableBg(
                      colour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cardChild: IconContent(
                        myicon: Icons.format_color_text,
                        text: '\nQuiz',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            selectedGender == Gender.male
                ? Expanded(
              child: ReusableBg(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Table number you want to generate',
                          style: klabelTextStyle,
                        ),
      
                      ],
                    ),
                    Text(
                      number.toString(),
                      style: kDigitTextStyle,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: ksliderInactiveColor,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 35.0),
                      ),
                      child: Slider(
                        value: number.toDouble(),
                        min: 2,
                        max: 20,
                        onChanged: (double newValue) {
                          setState(() {
                            number = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
                : Expanded(
    child: ReusableBg(
    colour: kactiveCardColor,
    cardChild: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.baseline,
    textBaseline: TextBaseline.alphabetic,
    children: [
    Text(
    'Select number of questions',
    style: klabelTextStyle,
    ),

    ],
    ),
    Text(
    number2.toString(),
    style: kDigitTextStyle,
    ),
    SliderTheme(
    data: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.white,
    inactiveTrackColor: ksliderInactiveColor,
    thumbColor: Color(0xFFEB1555),
    overlayColor: Color(0x29EB1555),
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 35.0),
    ),
    child: Slider(
    value: number2.toDouble(),
    min: 1,
    max: 20,
    onChanged: (double newValue) {
    setState(() {
    number2 = newValue.round();
    });
    },
    ),
    ),
    ],
    ),
    ),
    ),
            selectedGender == Gender.male
                ? Row(
              children: [
                Expanded(
                  child: ReusableBg(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lower Limit',
                          style: klabelTextStyle,
                        ),
                        Text(
                          Start.toString(),
                          style: kDigitTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  Start--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  Start++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableBg(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Upper Limit',
                          style: klabelTextStyle,
                        ),
                        Text(
                          End.toString(),
                          style: kDigitTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  End--;
                                });
                              },
                            ),
                            SizedBox(width: 15.0),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  End++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
                : Expanded(
              child: ReusableBg(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1D1E33)),
                      onPressed: () {
                        setState(() {
                          selectedButton = 'MCQs';
                        });
                      },
                      child: Text('MCQs',style: TextStyle(color: Colors.white),),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1D1E33)),
                      onPressed: () {
                        setState(() {
                          selectedButton = 'True/False';
                        });
                      },
                      child: Text('True/False',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
            selectedGender == Gender.male
                ? BottomContainer(
              text: 'Generate',
              onTap: () async {
                Calculate calc = Calculate(height: number, weight: Start, end: End);
                List<String> tableData = generateTable(number, Start, End);
      
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      bmi: calc.result(),
                      resultText: calc.getText(),
                      advise: calc.getAdvise(),
                      textColor: calc.getTextColor(),
                      tableData: tableData,
                    ),
                  ),
                );
              },
            )
                : BottomContainer(
              text: 'Take Quiz',
              onTap: () async {
                if (selectedButton == 'True/False') {
                  _viewstoredData(context);
                } else if (selectedButton == 'MCQs') {
                  _viewStoredData(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> generateTable(int height, int start, int end) {
    List<String> table = [];
    for (int i = start; i <= end; i++) {
      table.add('$height * $i = ${height * i}');
    }
    return table;
  }


  void _viewStoredData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MCQsPage(num: number2, ),
      ),
    );
  }

  void _viewstoredData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TrueFalsePage(num: number2,),
      ),
    );
  }


}
