import 'package:flutter/material.dart';
import 'package:zoom/MyTools/color.dart';

class MyButton extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;
  const MyButton({Key? key, required this.txt, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          txt,
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 45),
            primary: MyButtonColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
