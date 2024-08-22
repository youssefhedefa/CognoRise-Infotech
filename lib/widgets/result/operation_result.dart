import 'package:calculator/helpers/text_style_helper.dart';
import 'package:flutter/material.dart';


class OperationResult extends StatelessWidget {
  const OperationResult({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: AppTextStyleHelper.font56DarkThemeWhiteSemiBold,
    );
  }
}
