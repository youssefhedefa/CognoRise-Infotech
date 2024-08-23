import 'package:calculator/helpers/color_helper.dart';
import 'package:calculator/ui/widgets/result/operation.dart';
import 'package:calculator/ui/widgets/result/operation_result.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Result extends StatelessWidget {
  const Result({super.key, required this.firstOperand, required this.secondOperand, required this.operator, required this.isResultShown, required this.hasSecondOperand});

  final String firstOperand;
  final String secondOperand;
  final String operator;
  final bool isResultShown;
  final bool hasSecondOperand;

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
            firstOperand: firstOperand,
            operator: operator,
            secondOperand: hasSecondOperand ? secondOperand : '',
            isResultShown: isResultShown,
            isRow: !(firstOperand.toString().length > 8 || secondOperand.toString().length > 8),
          ),
          isResultShown ? OperationResult(
            result: NumberFormat('#,###').format(39126),
          ) : const SizedBox(),
        ],
      ),
    );
  }
}

