import 'package:flutter/material.dart';
import 'package:zoom/MyUI/My_Button/setting.dart';
import 'package:zoom/MyUI/contact.dart';
import 'package:zoom/MyUI/meetingUI.dart';
import 'package:zoom/MyUI/new_meet.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //const home({Key? key}) : super(key: key);
  int pageIdx = 0;
  final mypages = [
    new_meet(),
    meetingsUI(),
    contactUI(),
    setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(child: Text('home page'),),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 0, 127, 190),
        title: Text('My video app'),
        centerTitle: true,
      ),
      body: mypages[pageIdx],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              pageIdx = index;
            });
          },
          currentIndex: pageIdx,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blueAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.comment_bank), label: 'New meet'),
            BottomNavigationBarItem(
                icon: Icon(Icons.lock_clock), label: 'meeting'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'contact'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'setting'),
          ]),
    );
  }
}
