// results_page.dart

import 'package:flutter/material.dart';
import 'package:tablecalculator/Components/BottomContainer_Button.dart';
import 'package:tablecalculator/components/reusable_bg.dart';
import 'package:tablecalculator/constants.dart';
import 'package:tablecalculator/stored_data_page.dart';
import '../database_helper.dart';

class ResultPage extends StatefulWidget {
  final String resultText;
  final String bmi;
  final String advise;
  final Color textColor;
  final List<String> tableData;

  ResultPage({
    required this.textColor,
    required this.resultText,
    required this.bmi,
    required this.advise,
    required this.tableData,
  });

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Center(
          child: Text('Result'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.storage),
            onPressed: () {
              _viewStoredData(context);
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Table of ',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.bmi,
                    style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: ReusableBg(
                colour: kactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.tableData.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            widget.tableData[index],
                            style: klabelTextStyle,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    RawMaterialButton(
                      onPressed: () async {
                        print("Inserting data...");
                        await DatabaseHelper.insertResult(
                          resultText: widget.resultText,
                          bmi: widget.bmi,
                          advise: widget.advise,
                          textColor: widget.textColor,
                          tableData: widget.tableData,
                        );
                        print("Data inserted successfully");
                        _showSnackBar(context, 'Data stored successfully');
                      },
                      constraints: const BoxConstraints.tightFor(
                        width: 200.0,
                        height: 56.0,
                      ),
                      fillColor: const Color(0xFF4C4F5E),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'SAVE RESULT',
                        style: kBodyTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomContainer(
            text: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  void _viewStoredData(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoredDataPage(),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
