import 'package:flutter/material.dart';

import 'My_Button/my_icons.dart';

class new_meet extends StatelessWidget {
  const new_meet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        myIcon(
            icon: Icons.videocam,
            txt: 'new meeting',
            onClick: () {
              print('new meet');
            }),
        myIcon(
          icon: Icons.add_box_rounded,
          txt: 'join meeting',
          onClick: () {
            print('join meet');
          },
        ),
        myIcon(
          icon: Icons.calendar_today,
          txt: 'schedule',
          onClick: () {
            print('schedule');
          },
        ),
        myIcon(
          icon: Icons.arrow_upward_rounded,
          txt: "share screen",
          onClick: () {
            print('share screen');
          },
        ),
      ],
    ));
  }
}
