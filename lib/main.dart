import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator_v1/src/constants/constants.dart';
import 'package:bmi_calculator_v1/src/components/reusable_card.dart';
import 'package:bmi_calculator_v1/src/components/button_container.dart';
import 'package:bmi_calculator_v1/src/components/icon_text_widget.dart';
import 'package:bmi_calculator_v1/src/components/my_slider.dart';
import 'package:bmi_calculator_v1/src/components/color_updater.dart';
import 'package:bmi_calculator_v1/src/screens/result_page.dart';
import 'package:bmi_calculator_v1/src/components/round_icon_button.dart';
import 'package:bmi_calculator_v1/src/functions/calculate_brain.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: kBasicCardColor,
        scaffoldBackgroundColor: kBasicCardColor,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int heightNumber = 175;
  int weight = 60;
  ColorUpdate colorUpdate =
      ColorUpdate(); // Create An Object From ColorChanger Class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBasicCardColor,
      appBar: AppBar(
        backgroundColor: kBasicCardColor,
        shadowColor: kBasicCardColor,
        elevation: 15.0,
        leading: BackButton(
          onPressed: () => exit(0),
        ),
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: kMainTitle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () => setState(() {
                      colorUpdate.colorUpdater(Gender.male);
                    }),
                    changeableColor: colorUpdate.maleCardColor,
                    cardChild: IconTextWidget(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      iconMainColor: colorUpdate.firstMaleIconColor,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => setState(() {
                      colorUpdate.colorUpdater(Gender.female);
                    }),
                    changeableColor: colorUpdate.femaleCardColor,
                    cardChild: IconTextWidget(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      iconMainColor: colorUpdate.firstFeMaleIconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    changeableColor: kInActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: kMyTextStyle,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              '$heightNumber',
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kMyTextStyle,
                            ),
                          ],
                        ),
                        MySlider(
                          heightNumber: heightNumber,
                          onChanged: (double newHeightNumber) {
                            setState(() {
                              heightNumber = newHeightNumber.round();
                            });
                          },
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    changeableColor: kInActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kMyTextStyle,
                        ),
                        Text(
                          '$weight',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              rawIconData: FontAwesomeIcons.minus,
                              onTap: () => {
                                setState(() {
                                  weight--;
                                }),
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              rawIconData: FontAwesomeIcons.plus,
                              onTap: () => {
                                setState(() {
                                  weight++;
                                }),
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () => {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    changeableColor: kInActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kMyTextStyle,
                        ),
                        Text(
                          '$age',
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              rawIconData: FontAwesomeIcons.minus,
                              onTap: () => {
                                setState(
                                  () {
                                    age--;
                                  },
                                ),
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              rawIconData: FontAwesomeIcons.plus,
                              onTap: () => {
                                setState(
                                  () {
                                    age++;
                                  },
                                ),
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    onPress: () => {},
                  ),
                ),
              ],
            ),
          ),
          ButtonContainer(
            changeableHeight: 80.0,
            changeableColor: kButtonButton,
            buttonText: 'CALCULATE',
            onPress: () {
              CalculatorBrain calculatorBrain = CalculatorBrain(
                height: heightNumber,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResult: calculatorBrain.calculateBMI(),
                    resultText: calculatorBrain.getResult(),
                    interpretation: calculatorBrain.getInterPretation(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  } // End Of Context
} // End Of State
