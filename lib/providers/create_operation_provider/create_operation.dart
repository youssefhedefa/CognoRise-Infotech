import 'package:flutter/material.dart';

class CreateOperation extends ChangeNotifier {

  String firstNumber = '';
  String secondNumber = '';
  String operand = '';
  num result = 0;


  addDigit(String digit) {
    if (operand.isEmpty) {
      firstNumber += digit;
    } else {
      secondNumber += digit;
    }
    notifyListeners();
  }

  addOperand(String newOperand) {
    operand = newOperand;
    notifyListeners();
  }

  percentage() {
    if (operand.isEmpty) {
      firstNumber = (double.parse(firstNumber) / 100).toString();
    } else {
      secondNumber = (double.parse(secondNumber) / 100).toString();
    }
    notifyListeners();
  }

  calculate(){
    if(firstNumber.isNotEmpty && secondNumber.isNotEmpty && operand.isNotEmpty){
      double firstNum = double.parse(firstNumber);
      double secondNum = double.parse(secondNumber);
      switch(operand){
        case '+':
          result = firstNum + secondNum;
          break;
        case '-':
          result = firstNum - secondNum;
          break;
        case 'x':
          result = firstNum * secondNum;
          break;
        case '/':
          result = secondNum != 0 ? firstNum / secondNum : double.infinity;
          break;
        default:
          result = 0;
      }
      notifyListeners();
    }
  }

  deleteLastDigit() {
    if (operand.isEmpty) {
      if (firstNumber.isNotEmpty) {
        firstNumber = firstNumber.substring(0, firstNumber.length - 1);
      }
    } else {
      if (secondNumber.isNotEmpty) {
        secondNumber = secondNumber.substring(0, secondNumber.length - 1);
      }
    }
    notifyListeners();
  }

  reset(){
    firstNumber = '';
    secondNumber = '';
    operand = '';
    result = 0;
    notifyListeners();
  }

  changeSign() {
    if (operand.isEmpty) {
      firstNumber = (double.parse(firstNumber) * -1).toString();
    } else {
      secondNumber = (double.parse(secondNumber) * -1).toString();
    }
    notifyListeners();
   }

}