import 'package:calculator/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';


class Operation extends StatelessWidget {
  const Operation({super.key, required this.firstOperand, required this.operator, required this.secondOperand, required this.isResultShown, required this.isRow});

  final String firstOperand;
  final String operator;
  final String secondOperand;
  final bool isResultShown;
  final bool isRow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: isRow ? Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children(),
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: children(isColumn: true),
      ),
    );
  }

  List<Widget> children({bool isColumn = false}){
    return  [
      Text(
        firstOperand,
        style: isResultShown ? AppTextStyleHelper.font36DarkThemeWhiteSemiBold : AppTextStyleHelper.font52DarkThemeWhiteSemiBold,
      ),
      const SizedBox(width: 12),
      Padding(
        padding: isColumn ? const EdgeInsets.symmetric(horizontal: 12) : EdgeInsets.zero,
        child: Text(
          operator,
          style: isResultShown ? AppTextStyleHelper.font34DarkThemeOrangeRegular : AppTextStyleHelper.font44DarkThemeOrangeRegular,
        ),
      ),
      const SizedBox(width: 12),
      Text(
        secondOperand,
        style: isResultShown ? AppTextStyleHelper.font36DarkThemeWhiteSemiBold : AppTextStyleHelper.font52DarkThemeWhiteSemiBold,
      ),
    ];
  }

}
