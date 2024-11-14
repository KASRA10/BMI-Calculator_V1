import 'package:flutter/material.dart';

import 'package:bmi_calculator_v1/src/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Text('data,'),
    );
  }
}
