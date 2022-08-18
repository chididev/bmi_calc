import 'package:flutter/material.dart';
import 'package:bmi_calc/reuseable/constants.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({required this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: kCardTileColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: cardChild,
    );
  }
}
