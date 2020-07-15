import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;
  MyCard({@required this.color, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
