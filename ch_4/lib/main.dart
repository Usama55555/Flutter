import 'dart:js_util';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Colors.green,
        ),
        appBar: AppBar(
          title: const Center(child: Text('My App')),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.lightGreen,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Row(
            //   children: [
            //     Expanded(
            //       flex:2,
            //       child: Center(
            //         child: Container(
            //           height: 200,
            //           //width: 200,
            //           alignment: Alignment.center,
            //           //margin: const EdgeInsets.only(left: 100),
            //           padding: const EdgeInsets.symmetric(horizontal: 50),
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   fit: BoxFit.fill,
            //                   image: NetworkImage(
            //                       'https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
            //               color: Colors.green.withOpacity(.9),
            //               borderRadius: BorderRadius.circular(10),
            //               border: Border.all(width: 1, color: Colors.green),
            //               boxShadow: const [
            //                 BoxShadow(color: Colors.greenAccent, blurRadius: 10)
            //               ]),
            //           child: const Text(
            //             'Muhammad Usama',
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       child: Center(
            //         child: Container(
            //           height: 200,
            //           //width: 200,
            //           alignment: Alignment.center,
            //           //margin: const EdgeInsets.only(left: 100),
            //           padding: const EdgeInsets.symmetric(horizontal: 50),
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   fit: BoxFit.fill,
            //                   image: NetworkImage(
            //                       'https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
            //               color: Colors.green.withOpacity(.9),
            //               borderRadius: BorderRadius.circular(10),
            //               border: Border.all(width: 1, color: Colors.green),
            //               boxShadow: const [
            //                 BoxShadow(color: Colors.greenAccent, blurRadius: 10)
            //               ]),
            //           child: const Text(
            //             'Muhammad Usama',
            //             textAlign: TextAlign.center,
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // Center(
            //   child: Container(
            //     height: 200,
            //     width: 200,
            //     alignment: Alignment.center,
            //     margin: const EdgeInsets.only(left: 100),
            //     padding: const EdgeInsets.symmetric(horizontal: 50),
            //     decoration: BoxDecoration(
            //         image: const DecorationImage(
            //             fit: BoxFit.fill,
            //             image: NetworkImage(
            //                 'https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
            //         color: Colors.green.withOpacity(.9),
            //         borderRadius: BorderRadius.circular(10),
            //         border: Border.all(width: 1, color: Colors.green),
            //         boxShadow: const [
            //           BoxShadow(color: Colors.greenAccent, blurRadius: 10)
            //         ]),
            //     child: const Text(
            //       'Muhammad Usama',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(color: Colors.white),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //     keyboardType: TextInputType.emailAddress,
            //     cursorColor: Colors.green,
            //     //enabled: false,
            //     style: const TextStyle(color: Colors.white),
            //     decoration: InputDecoration(
            //       hintText: 'Email',
            //       hintStyle: const TextStyle(color: Colors.greenAccent),
            //       labelText: 'Email',
            //       //icon: Icon(Icons.email_outlined),
            //       prefixIcon: const Icon(Icons.email_outlined),
            //       suffixIcon: const Icon(Icons.alternate_email),
            //       enabledBorder: OutlineInputBorder(
            //         borderSide: const BorderSide(color: Colors.green),
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       focusedBorder: OutlineInputBorder(
            //         borderSide: const BorderSide(color: Colors.black),
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //       errorBorder: OutlineInputBorder(
            //         borderSide: const BorderSide(color: Colors.red),
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
            // )
            //   Stack(
            //     children: [
            //        Container(
            //           height: 200,
            //             width: 200,
            //         color: Colors.red,
            //             ),
            //         Positioned(
            //           right: 0,
            //             child: Text('Muhammad')),
            //     ],
            //   ),
            SizedBox(
              height: 100,
              child: VerticalDivider(
                color: Colors.black,
                width: 2,
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 100,
            //       itemBuilder: (context , index) {
            //         return const ListTile(
            //           leading: CircleAvatar(
            //             minRadius: 10,
            //             maxRadius: 30,
            //             backgroundImage: NetworkImage(
            //                 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            //           ),
            //           title: Text('UB_Creatives'),
            //           subtitle: Text('Subcribe my channel'),
            //           trailing: Text('9:13'),
            //         );
            //       }),
            // ),
            RichText(
              text: TextSpan(
                  text: 'Hello',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 30,color: Colors.white),
                  children: [
                TextSpan(
                    text: 'world',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20))
              ]),
            )
          ],
        ),
      ),
    );
  }
}
