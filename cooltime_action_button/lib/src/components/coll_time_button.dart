

import 'package:cooltime_action_button/src/app.dart';
import 'package:cooltime_action_button/src/controller/button_controller.dart';
import 'package:flutter/material.dart';

class CoolTimeButton extends StatefulWidget {
   CoolTimeButton();

  @override
  _CoolTimeButtonState createState() => _CoolTimeButtonState();
}

class _CoolTimeButtonState extends State<CoolTimeButton> {
  bool isActive = true;

  void _changeState(bool state) {

    setState(() {
      isActive = state;
    });
  }

  void _actionButton() {
    if (isActive) {
      _changeState(false);
      isActive = false;
      buttonController.action(ButtonType.ACTION1);
      Future.delayed(Duration(seconds:  2), () {
        _changeState(true);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _actionButton,
      child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
        child: Container(
        width: 100,
        height: 100,
        color: isActive ? Colors.redAccent.withOpacity(0.5) : Colors.black ,
        child: Center(child: Text('Button', style: TextStyle(fontSize: 20),)),
    ),
      ),
    );
  }
}
