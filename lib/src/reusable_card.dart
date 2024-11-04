import 'package:flutter/material.dart';

const marginDesign = EdgeInsets.all(
  15.0,
);

BorderRadius marginDesignCirCular = BorderRadius.circular(
  15.0,
);

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
      margin: marginDesign,
      decoration: BoxDecoration(
        color: changeableColor,
        borderRadius: marginDesignCirCular,
      ),
      child: cardChild,
    );
  }
}
