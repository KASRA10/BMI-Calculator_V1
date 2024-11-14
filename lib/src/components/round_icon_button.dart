import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData rawIconData;
  final Function onTap;

  const RoundIconButton({
    super.key,
    required this.rawIconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onTap(),
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
