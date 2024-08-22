import 'package:calculator/helpers/color_helper.dart';
import 'package:calculator/widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';


class ButtonsList extends StatelessWidget {
  const ButtonsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
      ),
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(24),
      itemBuilder: (context, index) {
        return buildButton(index: index);
      },
    );
  }

  Widget buildButton({required int index}){
    return CustomButton(text: getButtonText(index: index), textColor: getButtonTextColor(index: index),);
  }

  String getButtonText({required int index}) {
    const List<String> buttons = [
      'AC', '+/-', '%', '/',
      '7', '8', '9', 'x',
      '4', '5', '6', '-',
      '1', '2', '3', '+',
      '\u21BB','0', '.', '=',
    ];
    return buttons[index];
  }

  Color getButtonTextColor({required int index}){
    if(index < 3){
      return AppDarkColorsHelper.cyanColor;
    }
    else if(index % 4 == 3){
      return AppDarkColorsHelper.orangeColor;
    }
    else {
      return Colors.white;
    }
  }

}
