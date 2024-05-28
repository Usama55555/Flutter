import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:table_generator/components.dart';
import 'package:table_generator/displaydatascreen.dart';

class SavedDataScreen extends StatefulWidget {
  const SavedDataScreen({super.key});

  @override
  State<SavedDataScreen> createState() => _SavedDataScreenState();
}

class _SavedDataScreenState extends State<SavedDataScreen> {
  final DatabaseHelper dbHelper = DatabaseHelper();
  List<Map<String, dynamic>> savedData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    savedData = await dbHelper.getAllData();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Display Data'),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          Expanded(
            child: savedData.isNotEmpty
                ? ListView.builder(
              itemCount: savedData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Center(
                    child: Text(
                      "Current: ${savedData[index]['current']}, Lower: ${savedData[index]['lower']}, Upper: ${savedData[index]['upper']}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  onTap: () async {
                    // Navigate to a new screen with the selected file name
                    String fileName = savedData[index]['file_name'];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayDataScreen(fileName: fileName),
                      ),
                    );
                  },
                );
              },
            )
                : const Center(
              child: Text(
                'No saved data.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
              child: InkWell(
                onTap: ()async{
                  await dbHelper.clearAllData();
                  fetchData();
                },
                child: const container(
                    col: Colors.redAccent,
                    widget: Center(
                        child: Text(
                          'CLEAR ALL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ))),
              ))
        ],
      ),
    );
  }
}
