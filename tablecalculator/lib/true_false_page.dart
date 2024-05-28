// mcqs_page.dart

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:tablecalculator/database_helper.dart';
import 'package:tablecalculator/mcq_true_false.dart';
import 'package:tablecalculator/stored_data_page.dart';

class TrueFalsePage extends StatelessWidget {
  int num;
  TrueFalsePage({required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('True/False'),
      ),
      body:
      FutureBuilder<List<Map<String, dynamic>>>(
        future: DatabaseHelper.fetchStoredData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return Center(
              child: Text('Error fetching data. See console for details.'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text('No stored data.'),
            );
          } else {
            // Display the fetched results in a ListView
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> result = snapshot.data![index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>QuizTrueFalse(numberAsString: result['bmi'], question: num))));
                  },
                  child: Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Quiz of table: ${result['bmi']}'),

                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }


}
