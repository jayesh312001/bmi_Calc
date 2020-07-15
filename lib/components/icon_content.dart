import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData cardIcon;
  final String cardName;

  IconContent({@required this.cardIcon, @required this.cardName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(cardIcon, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(cardName, style: kLabelStyle),
      ],
    );
  }
}
