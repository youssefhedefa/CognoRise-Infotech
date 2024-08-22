import 'package:calculator/helpers/color_helper.dart';
import 'package:calculator/widgets/operation.dart';
import 'package:calculator/widgets/operation_result.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Result extends StatelessWidget {
  const Result({super.key, required this.firstOperand, required this.secondOperand, required this.operator});

  final double firstOperand;
  final double secondOperand;
  final String operator;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppDarkColorsHelper.blackColor,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Operation(
            firstOperand: NumberFormat('#,###').format(firstOperand),
            operator: operator,
            secondOperand: NumberFormat('#,###').format(secondOperand),
            isResultShown: true,
            isRow: !(firstOperand.toString().length > 7 || secondOperand.toString().length > 7),
          ),
          OperationResult(
            result: NumberFormat('#,###').format(39126),
          ),
        ],
      ),
    );
  }
}

