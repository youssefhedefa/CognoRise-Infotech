import 'package:calculator/helpers/text_style_helper.dart';
import 'package:calculator/providers/create_operation_provider/create_operation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class OperationResult extends StatelessWidget {
  const OperationResult({super.key,});

  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<CreateOperation>().result.toString(),
      style: AppTextStyleHelper.font56DarkThemeWhiteSemiBold,
    );
  }
}
