import 'package:flutter/material.dart';
import 'package:zoom/MyCode/auth_code.dart';
import 'package:zoom/MyUI/My_Button/my_button.dart';
import 'package:zoom/MyUI/home.dart';

class LoginUI extends StatelessWidget {
  // const LoginUI({Key? key}) : super(key: key);
  final authcode _authCode = authcode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'enjoy your meeting',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Image.asset('assets/images/meeting.png'),
          ),
          MyButton(
            txt: 'Join Us Or Login',
            onPressed: () {
              _authCode.SignInWithGoogle();
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return home();
              }));
            },
          ),
        ],
      ),
    );
  }
}
