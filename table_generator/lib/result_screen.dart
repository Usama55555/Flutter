import 'package:flutter/material.dart';
import 'package:table_generator/components.dart';
import 'package:table_generator/saved_data.dart';


class resultScreen extends StatefulWidget {
  List<double> result = [];
  int current;
  int lower;
  int upper;

  resultScreen({
    Key? key,
    required this.result,
    required this.current,
    required this.lower,
    required this.upper,
  }) : super(key: key);

  @override
  State<resultScreen> createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {
  List<double> multi = [];
  final DatabaseHelper dbHelper = DatabaseHelper();

  void calculateResults() {
    // Calculate results for the current range
    for (int i = widget.lower; i <= widget.upper; i++) {
      double value = widget.current * i.toDouble();
      multi.add(value);
    }
  }

  void saveData() async {
    // Use the current value as the file name
    String fileName = "table_${widget.current}.db";

    await dbHelper.insertData(
      widget.current,
      widget.lower,
      widget.upper,
      widget.result,
      fileName,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Data Saved'),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    calculateResults();
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Show Result'),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF0A0E21),
      ),
      body: Column(
        children: [
          container(
            widget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: ListView.builder(
                    itemCount: widget.result.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Center(
                          child: Text(
                            "${widget.current} x ${widget.lower + index} = ${widget.result[index]}",textAlign: TextAlign.justify,
                            style: const TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        saveData();
                        setState(() {

                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Data Saved'),
                          ),
                        );
                      },
                      child: const container(
                          col: Colors.redAccent,
                          widget: Center(
                              child: Text(
                                'SAVE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ))),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SavedDataScreen()));
                      },
                      child: const container(
                          col: Colors.redAccent,
                          widget: Center(
                              child: Text(
                                'SHOW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ))),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

