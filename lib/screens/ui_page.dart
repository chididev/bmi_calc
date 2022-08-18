import 'package:bmi_calc/services/app_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/reuseable/container_tile.dart';
import 'package:bmi_calc/reuseable/floating_icon_button.dart';
import 'package:bmi_calc/reuseable/card_container.dart';
import 'package:bmi_calc/screens/result_screen.dart';

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  int weight = 56;
  int height = 150;
  int age = 24;
  String? weightMetric = 'kg';
  String? heightMetric = 'cm';

  void checkWeight() {
    if (weight <= 0) {
      weight = 0;
    } else {
      weight;
    }
  }

  void checkHeight() {
    if (height <= 0) {
      height = 0;
    } else {
      height;
    }
  }

  void checkAge() {
    if (age <= 0) {
      age = 0;
    } else {
      age;
    }
  }

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
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Weight',
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CardContainer(
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingIconButton(
                                onPress: () {
                                  setState(() {
                                    weight--;
                                    checkWeight();
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                                iconColor: Colors.white),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            FloatingIconButton(
                                onPress: () {
                                  setState(() {
                                    weight++;
                                    checkWeight();
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                                iconColor: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Expanded(
                      child: CardContainer(
                        cardChild: Center(
                          child: DropdownButton<String>(
                            value: weightMetric,
                            items: const [
                              DropdownMenuItem(
                                value: 'kg',
                                child: Text('kg'),
                              ),
                              DropdownMenuItem(
                                value: 'lb',
                                child: Text('lb'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                weightMetric = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
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
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CardContainer(
                        cardChild: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingIconButton(
                                onPress: () {
                                  setState(() {
                                    height--;
                                    checkHeight();
                                  });
                                },
                                icon: FontAwesomeIcons.minus,
                                iconColor: Colors.white),
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                            FloatingIconButton(
                                onPress: () {
                                  setState(() {
                                    height++;
                                    checkHeight();
                                  });
                                },
                                icon: FontAwesomeIcons.plus,
                                iconColor: Colors.white),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 3.0,
                    ),
                    Expanded(
                      child: CardContainer(
                        cardChild: Center(
                          child: DropdownButton<String>(
                            value: heightMetric,
                            items: const [
                              DropdownMenuItem(
                                value: 'cm',
                                child: Text('cm'),
                              ),
                              DropdownMenuItem(
                                value: 'm',
                                child: Text('m'),
                              ),
                              DropdownMenuItem(
                                value: 'inch',
                                child: Text('inch'),
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                heightMetric = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
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
                      FloatingIconButton(
                          onPress: () {
                            setState(() {
                              age--;
                              checkAge();
                            });
                          },
                          icon: FontAwesomeIcons.minus,
                          iconColor: Colors.white),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      FloatingIconButton(
                          onPress: () {
                            setState(() {
                              age++;
                              checkAge();
                            });
                          },
                          icon: FontAwesomeIcons.plus,
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
              onPressed: () {
                //AppBrain instance
                AppBrain appBrain = AppBrain(weight: weight, height: height);
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) {
                    return ResultScreen(
                      bmiResult: appBrain.bmi(),
                      resultText: appBrain.getResult(),
                      resultInterpretation: appBrain.interpretResult(),
                    );
                  }),
                );
              },
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
