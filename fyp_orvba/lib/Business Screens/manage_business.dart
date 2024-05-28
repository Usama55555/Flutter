import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/textStyels.dart';

class ManageBusiness extends StatelessWidget {
  const ManageBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7159E3),
        title: Text("Your Business", style: style24boldWhite,),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 12,
          itemBuilder: (context, index){
        return Card(
          child: ListTile(
            leading: Image.asset("assets/service.png"),
            title: Text("Service Station",style: style18boldBlack),
            subtitle: Text("Burewala", style: style14boldBlack,),
            trailing: Icon(Icons.delete, color: Colors.red,),
          ),
        );
      }),
    );
  }
}
