import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class ColorUpdate {
  Color maleCardColor = kInActiveCardColor;
  Color femaleCardColor = kInActiveCardColor;
  Color firstMaleIconColor = kIconColors;
  Color firstFeMaleIconColor = kIconColors;
  // 1 = male, 2= female ==> for Changeable colors
  void colorUpdater(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      maleCardColor = kActiveCardColor;
      firstMaleIconColor = kActivatedColor;
      femaleCardColor = kInActiveCardColor;
      firstFeMaleIconColor = kIconColors;
    } else if (selectedGender == Gender.female) {
      femaleCardColor = kActiveCardColor;
      firstFeMaleIconColor = kActivatedColor;
      maleCardColor = kInActiveCardColor;
      firstMaleIconColor = kIconColors;
    }
  }
}
