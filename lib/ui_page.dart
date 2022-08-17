import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/reuseable/container_tile.dart';
import 'package:bmi_calc/reuseable/floating_icon_button.dart';
import 'package:bmi_calc/reuseable/card_container.dart';

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  int weight = 56;
  int height = 150;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //First Tile
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Align(
                  heightFactor: 1.5,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ContainerCard(
                        icon: FontAwesomeIcons.person,
                        label: 'MALE',
                      ),
                    ),
                    Expanded(
                      child: ContainerCard(
                        icon: FontAwesomeIcons.personDress,
                        label: 'FEMALE',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //  Second Tile
          Expanded(
            child: Column(
              children: [
                const Align(
                  heightFactor: 1.5,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Weight',
                  ),
                ),
                CardContainer(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.plus, iconColor: Colors.white),
                      Text(
                        weight.toString(),
                      ),
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.minus,
                          iconColor: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //  Third Tile
          Expanded(
            child: Column(
              children: [
                const Align(
                  heightFactor: 1.5,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Height',
                  ),
                ),
                CardContainer(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.plus, iconColor: Colors.white),
                      Text(
                        height.toString(),
                      ),
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.minus,
                          iconColor: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //  Fourth Tile
          Expanded(
            child: Column(
              children: [
                const Align(
                  heightFactor: 1.5,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Age',
                  ),
                ),
                CardContainer(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.plus, iconColor: Colors.white),
                      Text(
                        age.toString(),
                      ),
                      const FloatingIconButton(
                          icon: FontAwesomeIcons.minus,
                          iconColor: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //  Fifth Tile
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            color: Colors.green,
            height: 50,
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
