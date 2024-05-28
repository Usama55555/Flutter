import 'package:flutter/material.dart';
import 'package:fyp_orvba/components/textStyels.dart';

class HolderContainer extends StatelessWidget {
  final String imageURL;
  final String title;
  final VoidCallback onpressed;
  HolderContainer({required this.title, required this.imageURL, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onpressed,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(
                  image: AssetImage(imageURL),
                  width: 70,
                ),
                Text(
                  title,
                  style: head14bold,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
