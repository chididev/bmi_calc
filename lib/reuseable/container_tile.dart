import 'package:bmi_calc/reuseable/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({required this.icon, required this.label, required this.color, required this.iconCheckColor});
  final IconData? icon;
  final String label;
  final Color color;
  final Color iconCheckColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        color: kInactiveTileColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 150.0,
              ),
              Icon(
                FontAwesomeIcons.circleCheck,
                color: iconCheckColor,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Icon(
            icon,
            color: kCardIconFontColor,
            size: 80.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: kCardTileFont,
          ),
        ],
      ),
    );
  }
}
