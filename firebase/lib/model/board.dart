import 'package:firebase_database/firebase_database.dart';

class Board {
  String key;
  String subject;
  String body;

  Board(this.subject, this.body) : key = ''; // Provide a default value for key

  Board.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key ?? '',
        subject = (snapshot.value as Map<String, dynamic>)["subject"] ?? '',
        body = (snapshot.value as Map<String, dynamic>)["body"] ?? '';

  Map<String, dynamic> toJson() {
    return {
      "subject": subject,
      "body": body,
    };
  }
}
