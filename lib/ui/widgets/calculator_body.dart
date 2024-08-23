import 'package:calculator/providers/create_operation_provider/create_operation.dart';
import 'package:calculator/ui/widgets/buttons/buttons_list_body.dart';
import 'package:calculator/ui/widgets/result/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CalculatorBody extends StatelessWidget {
  const CalculatorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 40,
          child: Result(
            firstOperand: context.watch<CreateOperation>().firstNumber,
            secondOperand: context.watch<CreateOperation>().secondNumber,
            operator: context.watch<CreateOperation>().operand,
            isResultShown: context.watch<CreateOperation>().result != 0 ? true : false,
            hasSecondOperand: context.watch<CreateOperation>().secondNumber != '0' ? true : false,
          ),
        ),
        const Expanded(
          flex: 60,
          child: ButtonsListBody(),
        ),
      ],
    );
  }
}
