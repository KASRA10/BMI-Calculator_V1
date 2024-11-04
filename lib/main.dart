import 'package:bmi_calculator_v1/src/reusable_container.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(
        0xFF1D1E33,
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF1D1E33,
      ),
      appBar: AppBar(
        backgroundColor: const Color(
          0xFF1D1E33,
        ),
        shadowColor: const Color(
          0xFF1D1E33,
        ),
        elevation: 15.0,
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableContainer(
                    changeableColor: Color(
                      0xFF2D2E41,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    changeableColor: Color(
                      0xFF2D2E41,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableContainer(
                    changeableColor: Color(
                      0xFF2D2E41,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableContainer(
                    changeableColor: Color(
                      0xFF2D2E41,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    changeableColor: Color(
                      0xFF2D2E41,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } // End Of Context
} // End Of State
