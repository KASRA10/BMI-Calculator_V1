import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants/constants.dart';

class ButtonContainer extends StatelessWidget {
  final double changeableHeight;
  final Color changeableColor;
  final String buttonText;
  final Function onPress;

  const ButtonContainer({
    super.key,
    required this.changeableHeight,
    required this.changeableColor,
    required this.buttonText,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        width: double.infinity,
        height: changeableHeight,
        margin: const EdgeInsets.only(
          top: 10.0,
        ),
        decoration: BoxDecoration(
          color: changeableColor,
          borderRadius: BorderRadius.only(
            topLeft: kMarginDesignCirCularButton,
            topRight: kMarginDesignCirCularButton,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
