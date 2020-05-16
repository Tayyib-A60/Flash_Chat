import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.buttonName, this.buttonColor, this.action });

  final String buttonName;
  final Color buttonColor;
  final Function action;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: action,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}