import 'package:flutter/material.dart';

class container extends StatelessWidget {
  //final String text;
  //VoidCallback onpress;
  final Widget child;
  final Color color;
  container({super.key, required this.child, this.color = const Color(0xFF1D1E33),});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: InkWell(
          //onTap: onpress,
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}

//0xFF4C4F5E
class iconbutton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpress;
  const iconbutton({super.key, required this.icon, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Color(0xFF4C4F5E),
              shape: BoxShape.circle
            ),
            child: Icon(
                  icon,
                  color: Colors.white,
                ),
          ),
        ));
  }
}

