import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class ColorUpdate {
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;
  // 1 = male, 2= female ==> for Changeable colors
  void colorUpdater(Gender selectedGender) {
    // Male Is pressed
    maleCardColor =
        selectedGender == Gender.male ? kActiveCardColor : kInActiveCardColor;
    // Female is Pressed
    femaleCardColor =
        selectedGender == Gender.female ? kActiveCardColor : kInActiveCardColor;
  }
}
