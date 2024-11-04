import 'package:bmi_calculator_v1/src/reusable_card.dart';
import 'package:bmi_calculator_v1/src/button_container.dart';
import 'package:bmi_calculator_v1/src/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const carColor = Color(
  0xFF1D1E33,
);
const carColorLighter = Color(
  0xFF2D2E41,
);
const buttonButton = Color(
  0xFFEB1555,
);

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: carColor,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: carColor,
      appBar: AppBar(
        backgroundColor: carColor,
        shadowColor: carColor,
        elevation: 15.0,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
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
                    changeableColor: carColorLighter,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconTextWidget(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    changeableColor: carColorLighter,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconTextWidget(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ],
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
                    changeableColor: carColorLighter,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          color: iconColors,
                          size: 80.0,
                          semanticLabel: 'Men\'s Icons',
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: textColors,
                          ),
                        ),
                      ],
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
                    changeableColor: carColorLighter,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          color: iconColors,
                          size: 80.0,
                          semanticLabel: 'Men\'s Icons',
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: textColors,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    changeableColor: carColorLighter,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          color: iconColors,
                          size: 80.0,
                          semanticLabel: 'Men\'s Icons',
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: textColors,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonContainer(
            changeableHeight: 80.0,
            changeableColor: buttonButton,
          ),
        ],
      ),
    );
  } // End Of Context
} // End Of State
