import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconTextWidget({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: kIconColors,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kMyTextStyle,
        ),
      ],
    );
  }
}
