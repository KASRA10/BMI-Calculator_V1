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
  void colorUpdater(Gender gender) {
    if (gender == Gender.male) {
      // Male Card Pressed
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }
    if (gender == Gender.female) {
      // FeMale Card Pressed
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inActiveCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }
}
