import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({this.text, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                wordSpacing: 3),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerheight,
        width: double.infinity,
      ),
    );
  }
}
