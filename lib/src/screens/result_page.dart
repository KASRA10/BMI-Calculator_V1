import 'package:bmi_calculator_v1/src/components/button_container.dart';
import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants/constants.dart';
import 'package:bmi_calculator_v1/src/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultPage({
    super.key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBasicCardColor,
        shadowColor: kBasicCardColor,
        elevation: 15.0,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: kMainTitle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(
                  25.0,
                ),
                child: Text(
                  'YOUR RESULT',
                  textAlign: TextAlign.center,
                  style: kResultTitle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              changeableColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    child: Text(
                      interpretation.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          ButtonContainer(
            buttonText: 'RE-CALCULATE',
            changeableColor: Colors.pink,
            changeableHeight: 80.0,
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
