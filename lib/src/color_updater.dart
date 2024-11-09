import 'package:flutter/material.dart';

const activeCardColor = Color(
  0xFF2D2E41,
);
const inActiveCardColor = Color(
  0xFF111328,
);

enum Gender {
  male,
  female,
}

class ColorUpdate {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;
  // 1 = male, 2= female ==> for Changeable colors
  void colorUpdater(Gender selectedGender) {
    // Male Is pressed
    maleCardColor =
        selectedGender == Gender.male ? activeCardColor : inActiveCardColor;
    // Female is Pressed
    femaleCardColor =
        selectedGender == Gender.female ? activeCardColor : inActiveCardColor;
  }
}
