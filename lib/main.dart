import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator_v1/src/constants.dart';
import 'package:bmi_calculator_v1/src/reusable_card.dart';
import 'package:bmi_calculator_v1/src/button_container.dart';
import 'package:bmi_calculator_v1/src/icon_text_widget.dart';
import 'package:bmi_calculator_v1/src/color_updater.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: kBasicCardColor,
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
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
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
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 30.0,
                            ),
                            thumbColor: kSliderThumbColor,
                            activeTrackColor: kSliderActiveBarColor,
                            inactiveTrackColor: kSliderInActiveBarColor,
                            overlayColor: kSliderOverLayColor,
                          ),
                          child: Slider(
                            value: heightNumber.toDouble(),
                            min: minHeightNumber,
                            max: maxHeightNumber,
                            onChanged: (double newHeightNumber) {
                              setState(() {
                                heightNumber = newHeightNumber.round();
                              });
                            },
                          ),
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
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                ),
              ],
            ),
          ),
          ButtonContainer(
            changeableHeight: 80.0,
            changeableColor: kButtonButton,
          ),
        ],
      ),
    );
  } // End Of Context
} // End Of State
