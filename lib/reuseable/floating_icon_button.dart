import 'package:flutter/material.dart';

class FloatingIconButton extends StatelessWidget {
  const FloatingIconButton({required this.icon, required this.iconColor});
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.blue,
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
