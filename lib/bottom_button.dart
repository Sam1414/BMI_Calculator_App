import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  BottomButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 8.0),
        height: 60.0,
        margin: EdgeInsets.only(top: 10.0),
        color: kBottomContainerColor,
        child: Center(
          child: Text(
            title,
            style: kLowerButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
