import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color changeableColor;
  final Widget cardChild;
  final Function onPress;

  const ReusableCard({
    super.key,
    required this.changeableColor,
    required this.cardChild,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: kMarginDesign,
        decoration: BoxDecoration(
          color: changeableColor,
          borderRadius: marginDesignCirCular,
        ),
        child: cardChild,
      ),
    );
  }
}
