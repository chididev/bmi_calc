import 'package:flutter/material.dart';
import 'package:bmi_calc/reuseable/constants.dart';

class FloatingIconButton extends StatelessWidget {
  const FloatingIconButton(
      {required this.icon, required this.iconColor, required this.onPress});
  final IconData icon;
  final Color iconColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onPress(),
      elevation: 2.0,
      fillColor: kCardIconColor,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 26.0,
        width: 26.0,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
