import 'package:flutter/material.dart';

Radius marginDesignCirCular = Radius.circular(
  10.0,
);

class ButtonContainer extends StatelessWidget {
  final double changeableHeight;
  final Color changeableColor;

  const ButtonContainer({
    super.key,
    required this.changeableHeight,
    required this.changeableColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: changeableHeight,
      margin: const EdgeInsets.only(
        top: 10.0,
      ),
      decoration: BoxDecoration(
        color: changeableColor,
        borderRadius: BorderRadius.only(
          topLeft: marginDesignCirCular,
          topRight: marginDesignCirCular,
        ),
      ),
    );
  }
}
