import 'package:calculator/helpers/color_helper.dart';
import 'package:calculator/providers/create_operation_provider/create_operation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.textColor});

  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(text);
        if(text == 'AC'){
          context.read<CreateOperation>().reset();
          return ;
        }
        else{
          if(text == '+' || text == '-' || text == 'x' || text == '/'){
            context.read<CreateOperation>().addOperand(text);
            return ;
          }
          else if(text == '='){
            context.read<CreateOperation>().calculate();
            return ;
          }
          else if(text == '\u21BB'){
            context.read<CreateOperation>().deleteLastDigit();
            return ;
          }
          else if(text == '%'){
            context.read<CreateOperation>().percentage();
            return ;
          }
          else if(text == '+/-'){
            context.read<CreateOperation>().changeSign();
            return ;
          }
          // else if(text == '.'){
          //   context.read<CreateOperation>().addDot();
          //   return ;
          // }
        }
        context.read<CreateOperation>().addDigit(text);
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppDarkColorsHelper.buttonBlackColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
