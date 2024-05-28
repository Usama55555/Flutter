// database_helper.dart

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../dbsqflite/model.dart';  // Import QuizModel

class DatabaseHelper {

  static Database? _database;
  static const String tableName = 'results';
  static const String tableDataTable = 'results_table';

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  static Future<Database> initDatabase() async {
    final path = join(await getDatabasesPath(), 'results.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE $tableName(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          resultText TEXT,
          bmi TEXT,
          advise TEXT,
          textColor INTEGER
        )
      ''');

        await db.execute('''
        CREATE TABLE $tableDataTable(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          resultId INTEGER,
          total TEXT,
          right TEXT,
          wrong TEXT,
          data TEXT,
          FOREIGN KEY (resultId) REFERENCES $tableName (id)
        )
      ''');
      },
      onOpen: (db) async {
        // This is called after the database is open
        await db.execute('DELETE FROM $tableDataTable');
        await db.execute('DELETE FROM sqlite_sequence WHERE name = "$tableDataTable"');
      },
    );
  }


  static Future<void> insertResult({
    required String resultText,
    required String bmi,
    required String advise,
    required Color textColor,
    required List<String> tableData,
  }) async {
    final Database db = await database;
    final batch = db.batch();

    final result = {
      'resultText': resultText,
      'bmi': bmi,
      'advise': advise,
      'textColor': textColor.value,
    };

    final resultId = await db.insert(tableName, result);

    for (String data in tableData) {
      batch.insert(tableDataTable, {
        'resultId': resultId,
        'data': data,
      });
    }

    await batch.commit();
  }

  static Future<List<Map<String, dynamic>>> fetchStoredData() async {
    final Database db = await database;
    final List<Map<String, dynamic>> results = await db.query(tableName);

    final List<Map<String, dynamic>> mutableResults =
    List<Map<String, dynamic>>.from(results.map((result) => {...result}));

    for (Map<String, dynamic> result in mutableResults) {
      final int resultId = result['id'];
      final List<Map<String, dynamic>> tableData =
      await db.query(tableDataTable, where: 'resultId = ?', whereArgs: [resultId]);

      result['tableData'] = tableData;
    }

    return mutableResults;
  }

  static Future<List<Map<String, Object?>>> fetchStoredDataMCQs() async {
    final Database db = await database;
    final List<Map<String, Object?>> mcqsData = await db.rawQuery('SELECT data FROM $tableDataTable');
    return mcqsData;
  }

  Future<int> insertMemo(QuizModel memo) async {
    final db = await database;
    return await db.insert(tableDataTable, memo.toMap());
  }

  Future<List<QuizModel>> fetchMemos() async {
    final db = await database;
    final maps = await db.query(tableDataTable);

    return List.generate(maps.length, (i) {
      return QuizModel(
        totalquestion: maps[i]['total'].toString(),
        right: maps[i]['right'].toString(),
        wrong: maps[i]['wrong'].toString(),
      );
    });
  }


}
