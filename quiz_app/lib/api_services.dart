
import 'dart:convert';
import 'package:http/http.dart' as http;
int account = 10;
var baseURL = "https://opentdb.com/api.php?amount=${account}";
getQuiz() async {
  var res = await http.get(Uri.parse(baseURL));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    print("data is loaded");
    return data;
  }
}
