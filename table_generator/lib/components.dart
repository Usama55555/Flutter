import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class container extends StatelessWidget {
  final Widget widget;
  final Color col;
  const container(
      {super.key, required this.widget, this.col = const Color(0xFF1D1E33)});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: col,
            borderRadius: BorderRadius.circular(10),
          ),
          child: widget,
        ),
      ),
    );
  }
}

class roundicon extends StatelessWidget {
  final VoidCallback onpress;
  final Icon ico;
  roundicon(
      {super.key,
      this.ico = const Icon(
        Icons.remove,
        color: Colors.white,
      ),
      required this.onpress
      });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 40,
            decoration:
                const BoxDecoration(color: Color(0xFF4C4F5E), shape: BoxShape.circle),
            child: IconButton(onPressed: onpress, icon: ico)));
  }
}

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  static late Database _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "table_generator.db");
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE IF NOT EXISTS saved_data(id INTEGER PRIMARY KEY AUTOINCREMENT, current INTEGER, lower INTEGER, upper INTEGER, result TEXT, file_name TEXT)");
  }

  Future<int> insertData(
      int current,
      int lower,
      int upper,
      List<double> result,
      String fileName,
      ) async {
    Database db = await database;
    String resultString = result.join(",");
    Map<String, dynamic> data = {
      "current": current,
      "lower": lower,
      "upper": upper,
      "result": resultString,
      "file_name": fileName, // Add the file name to the data
    };
    return await db.insert("saved_data", data);
  }


  Future<List<Map<String, dynamic>>> getAllData() async {
    try {
      Database db = await database;
      return await db.query("saved_data");
    } catch (e) {
      print("Error in getAllData: $e");
      return [];
    }
  }
  Future<List<Map<String, dynamic>>> getDataByFileName(String fileName) async {
    try {
      Database db = await database;
      return await db.query("saved_data", where: "file_name = ?", whereArgs: [fileName]);
    } catch (e) {
      print("Error in getDataByFileName: $e");
      return [];
    }
  }
  Future<void> clearAllData() async {
    Database db = await database;
    await db.delete("saved_data");
  }

}
