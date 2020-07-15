import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/myCard.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiResult,
      @required this.bmiResultText,
      @required this.bmiResultAnalysis});
  final String bmiResult;
  final String bmiResultText;
  final String bmiResultAnalysis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 40,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontFamily: 'Jose', fontWeight: FontWeight.w900),
        ),
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
                      bmiResultText,
                      style: kResultText,
                    ),
                    Text(
                      bmiResult,
                      style: kFinalBMI,
                    ),
                    Text(
                      'Normal BMI Range:\n18.5 - 25 kg/m2',
                      style: kLabelStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '',
                      style: kFinalText,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bmiResultAnalysis,
                        style: kFinalText,
                        textAlign: TextAlign.center,
                      ),
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
