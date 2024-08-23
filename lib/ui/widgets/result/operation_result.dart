import 'package:calculator/helpers/text_style_helper.dart';
import 'package:calculator/providers/create_operation_provider/create_operation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OperationResult extends StatelessWidget {
  const OperationResult({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<CreateOperation>().result.toStringAsFixed(4),
      style: AppTextStyleHelper.font56DarkThemeWhiteSemiBold,
    );
  }
}
