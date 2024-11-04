import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color changeableColor;

  const ReusableContainer({super.key, required this.changeableColor});

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
    );
  }
}
