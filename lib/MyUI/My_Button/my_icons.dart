import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myIcon extends StatelessWidget {
  final IconData icon;
  final String txt;
  final VoidCallback onClick;
  const myIcon(
      {Key? key, required this.icon, required this.txt, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onClick,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 107, 86, 86),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [BoxShadow(blurRadius: 5)]),
            child: Icon(
              icon,
              size: 60,
            ),
          ),
        ),
        Text(txt),
      ],
    );
  }
}
