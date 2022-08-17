import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({required this.cardChild});
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(5),
      ),
      child: cardChild,
    );
  }
}
