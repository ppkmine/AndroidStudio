import 'package:cooltime_action_button/src/app.dart';
import 'package:cooltime_action_button/src/controller/button_controller.dart';
import 'package:flutter/material.dart';

class DisplayView extends StatelessWidget {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: buttonController.actionButtonStream,
      builder: (_, AsyncSnapshot<ButtonType> snapshot) {
        i++;

        return Container(
          child: Text(
            i.toString(),
            style: TextStyle(fontSize: 100),
          ),
        );
      },
    );
  }
}
