import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase/model/board.dart';
import 'package:flutter/material.dart';


final FirebaseDatabase database = FirebaseDatabase.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCvEe_Lb3CbNybxjfQIXbXTRUKCAm5H6WU",
      authDomain: "your_auth_domain",
      projectId: "dumy-d604b",
      storageBucket: "dumy-d604b.appspot.com",
      messagingSenderId: "125374180582",
      appId: "1:125374180582:android:3fe8e6728c4a5147f01f27",
      databaseURL: "https://dumy-d604b-default-rtdb.firebaseio.com/",
    ),
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Board> boardMessages = [];
  late Board board;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late DatabaseReference databaseReference;

  @override
  void initState() {
    super.initState();

    board = Board("", "");
    databaseReference = database.reference().child("board_app");
    databaseReference.onChildAdded.listen(_onEntryAdded);
    databaseReference.onChildChanged.listen(_onEntryChanged);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        appBar: AppBar(
          title: Text("Board App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(color: Colors.white60),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                            initialValue: "",
                            onSaved: (val) => board.subject = val!,
                            validator: (val) => val!.isEmpty ? "Subject is required" : null,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: "Describe yourseft",
                            hintStyle: TextStyle(color: Colors.white60),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.white)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)
                            ),
                          ),
                            initialValue: "",
                            onSaved: (val) => board.body = val!,
                            validator: (val) => val!.isEmpty ? "Body is required" : null,
                          ),
                      ),
                      // Send or Post button
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        child: InkWell(
                          onTap: (){
                            handleSubmit();
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            width: double.infinity,
                            child:Center(child: Text("Finish",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),)),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: FirebaseAnimatedList(
                query: databaseReference,
                itemBuilder: (_, DataSnapshot snapshot, Animation<double> animation, int index) {
                  return Card(
                    color: Colors.redAccent,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFF0A0E21),
                      ),
                      title: Text(boardMessages[index].subject,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                      subtitle: Text(boardMessages[index].body,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onEntryAdded(DatabaseEvent event) {
    setState(() {
      boardMessages.add(Board.fromSnapshot(event.snapshot));
    });
  }

  void _onEntryChanged(DatabaseEvent event) {
    var oldEntry = boardMessages.singleWhere((entry) => entry.key == event.snapshot.key);

    setState(() {
      boardMessages[boardMessages.indexOf(oldEntry)] = Board.fromSnapshot(event.snapshot);
    });
  }

  void handleSubmit() {
    final FormState? form = formKey.currentState;
    if (form != null && form.validate()) {
      form.save();
      form.reset();
      // Save form data to the database
      databaseReference.push().set(board.toJson());
    }
  }
}
