import 'package:flutter/material.dart';
import 'package:table_generator/components.dart';
class DisplayDataScreen extends StatelessWidget {
  final String fileName;
  final DatabaseHelper dbHelper = DatabaseHelper();

  DisplayDataScreen({Key? key, required this.fileName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: dbHelper.getDataByFileName(fileName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // or a loading indicator
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          List<Map<String, dynamic>> data = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text('Display Data - $fileName'),
            ),
            body: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    "Current: ${data[index]['current']}, Lower: ${data[index]['lower']}, Upper: ${data[index]['upper']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}


