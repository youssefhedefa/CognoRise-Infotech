import 'package:calculator/widgets/buttons/buttons_list.dart';
import 'package:flutter/material.dart';


class ButtonsListBody extends StatelessWidget {
  const ButtonsListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: const ButtonsList(),
    );
  }
}


