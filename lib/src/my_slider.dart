import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class MySlider extends StatelessWidget {
  final int heightNumber;
  final Function(double) onChanged;

  const MySlider({
    super.key,
    required this.heightNumber,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: kThumbShapeRoundEdge,
        overlayShape: kOverLayShapeRoundEdge,
        thumbColor: kSliderThumbColor,
        activeTrackColor: kSliderActiveBarColor,
        inactiveTrackColor: kSliderInActiveBarColor,
        overlayColor: kSliderOverLayColor,
      ),
      child: Slider(
        value: heightNumber.toDouble(),
        min: minHeightNumber,
        max: maxHeightNumber,
        onChanged: onChanged,
      ),
    );
  }
}
