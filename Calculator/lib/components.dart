import 'package:flutter/material.dart';

class container extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onpress;
  container({super.key, required this.text, required this.onpress ,this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(child: Text(text, style: const TextStyle(fontSize: 19,color: Colors.white, fontWeight: FontWeight.w400),)),
        ),
      ),
    );
  }
}
