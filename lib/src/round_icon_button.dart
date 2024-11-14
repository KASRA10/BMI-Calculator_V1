import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData rawIconData;

  const RoundIconButton({
    super.key,
    required this.rawIconData,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => {},
      shape: CircleBorder(),
      fillColor: kRawIconButtonColor,
      elevation: 6.0,
      disabledElevation: 6.0,
      constraints: kRawConstrains,
      child: Icon(
        rawIconData,
        color: Colors.white,
        size: 18.0,
      ),
    );
  }
}
