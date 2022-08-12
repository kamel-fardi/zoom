import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom/MyCode/auth_code.dart';
import 'package:zoom/MyTools/color.dart';
import 'package:zoom/MyUI/Login.dart';
import 'package:zoom/MyUI/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyVideoApp',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: MyBackGroundColor),
      home: StreamBuilder(
        stream: authcode().authchanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return home();
          }
          return LoginUI();
        },
      ),
    );
  }
}
