// stored_data_page.dart

import 'package:flutter/material.dart';
import '../database_helper.dart';

class StoredDataPage extends StatefulWidget {
  @override
  _StoredDataPageState createState() => _StoredDataPageState();
}

class _StoredDataPageState extends State<StoredDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stored Data'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
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
                    _navigateToDetailedView(result);
                  },
                  child: Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text('Table of: ${result['bmi']}'),
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

  void _navigateToDetailedView(Map<String, dynamic> result) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoredDataDetailedView(result: result),
      ),
    );
  }
}

class StoredDataDetailedView extends StatelessWidget {
  final Map<String, dynamic> result;

  StoredDataDetailedView({required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stored Result'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Table of: ',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                Text(
                  result['bmi'],
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: result['tableData'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result['tableData'][index]['data'],
                    style: TextStyle(fontSize: 16.0),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
