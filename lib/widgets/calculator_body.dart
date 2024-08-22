import 'package:calculator/widgets/buttons_list.dart';
import 'package:calculator/widgets/result.dart';
import 'package:flutter/material.dart';


class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 40,
          child: Result(
            firstOperand: 56789,
            secondOperand: 9821,
            operator: '+',
          ),
        ),
        Expanded(
          flex: 60,
          child: ButtonsList(),
        ),
      ],
    );
  }
}
