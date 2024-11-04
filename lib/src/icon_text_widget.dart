import 'package:flutter/material.dart';

const textColors = Color(
  0xFF8D8E98,
);
const iconColors = Color(
  0xFFFFFFFF,
);

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
          color: iconColors,
          size: 80.0,
          semanticLabel: 'Men\'s Icons',
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: textColors,
          ),
        ),
      ],
    );
  }
}
