class QuizModel {

  final String totalquestion;
  final String right;
  final String wrong;
  QuizModel(
      {
        required this.totalquestion,
        required this.right,
        required this.wrong});

  Map<String, dynamic> toMap() {
    // used when inserting data to the database
    return <String, dynamic>{
      "total": totalquestion,
      "right": right,
      "wrong": wrong,
    };
  }
}