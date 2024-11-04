import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color changeableColor;
  final Widget cardChild;

  const ReusableCard({
    super.key,
    required this.changeableColor,
    required this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        15.0,
      ),
      decoration: BoxDecoration(
        color: changeableColor,
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: cardChild,
    );
  }
}
