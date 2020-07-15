import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/myCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  double calculateBMI(double weight, double height) {
    double h = height / 100;
    double a = weight / (h * h);
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 40,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Text(
              'Your Result',
              style: kResultTitle,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: MyCard(
                color: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kResultText,
                    ),
                    Text(
                      '23.6',
                      style: kFinalBMI,
                    ),
                    Text(
                      'You need to eat more',
                      style: kFinalText,
                    )
                    // Text(calculateBMI(weight, height).toString())
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              text: 'RE-CALCULATE YOUR BMI',
              onTap: () => Navigator.pop(context))
        ],
      ),
    );
  }
}
