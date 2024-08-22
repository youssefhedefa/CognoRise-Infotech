import 'package:calculator/helpers/color_helper.dart';
import 'package:calculator/ui/widgets/calculator_body.dart';
import 'package:calculator/ui/widgets/custom_switch_mode.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppDarkColorsHelper.blackColor,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CalculatorBody(),
            CustomSwitchButton(),
          ],
        ),
      ),
    );
  }
}
