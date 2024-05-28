import 'package:flutter/material.dart';
import 'package:fyp_orvba/Business%20Screens/business_dashboard.dart';
import 'package:fyp_orvba/components/button.dart';
import 'package:fyp_orvba/components/textStyels.dart';
import 'package:gap/gap.dart';

import '../components/textbox.dart';
import '../signup/finish.dart';

class CreateBusines extends StatefulWidget {
  const CreateBusines({super.key});

  @override
  State<CreateBusines> createState() => _CreateBusinesState();
}

class _CreateBusinesState extends State<CreateBusines> {
  bool petrolStation = false;
  bool serviceStation = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(14.0),
               child: Container(
                  width: double.infinity,
                  child:  Align(
                    alignment: Alignment.topLeft,
                    child:  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                    ),
                  )),
             ),
            const SizedBox(height: 30,),
            Text(
              "Business Details",
              style: style24boldBlack,
            ),
            Text(
              "Please provide authentic details",
              style: style14boldGrey,
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: petrolStation,
                          onChanged: (bool? value) {
                            setState(() {
                              if (serviceStation) {
                                serviceStation = false;
                              }
                              petrolStation = value ?? false;
                              if (!petrolStation) {
                                petrolStation = true;
                              }
                            });
                          }),
                      const Text("Petrol Station")
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: serviceStation,
                          onChanged: (bool? value) {
                            setState(() {
                              if (petrolStation) {
                                petrolStation = false;
                              }
                              serviceStation = value ?? false;
                              if (!serviceStation) {
                                serviceStation = true;
                              }
                            });
                          }),
                      const Text("Service Station")
                    ],
                  ),
                ],
              ),
            ),
            textBox(text: "Business name", icon: Icons.person),
            Gap(15),
            textBox(text: "City name", icon: Icons.location_on),
            Gap(15),
            textBox(
              text: '''
Services
e.g Oil replacement,
engine repair,
petrol
            ''',
              maxLines: null,
            ),
            const Spacer(),
            Button(text: "Create Business", onpress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>verifiedUser(title: "Business Created",subtitle: "Click below to check business",onPress: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DashboardScreen()));
              },)));
            }),
            Gap(15),
          ],
        ),
      ),
    );
  }
}
