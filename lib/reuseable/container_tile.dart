import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({required this.icon, required this.label});
  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 10),
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      height: 180,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: const [
              SizedBox(
                width: 150.0,
              ),
              Icon(
                FontAwesomeIcons.circleCheck,
                color: Colors.blue,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Icon(
            icon,
            color: Colors.blue,
            size: 80.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            label,
            style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
        ],
      ),
    );
  }
}
