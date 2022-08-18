import 'package:bmi_calc/services/app_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/reuseable/container_tile.dart';
import 'package:bmi_calc/reuseable/floating_icon_button.dart';
import 'package:bmi_calc/reuseable/card_container.dart';
import 'package:bmi_calc/screens/result_screen.dart';
import 'package:bmi_calc/reuseable/constants.dart';

enum Gender {
  male,
  female,
}

class UiPage extends StatefulWidget {
  const UiPage({Key? key}) : super(key: key);

  @override
  State<UiPage> createState() => _UiPageState();
}

class _UiPageState extends State<UiPage> {
  Gender? selectedGender;
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
        leading: const Icon(
          FontAwesomeIcons.barsStaggered,
        ),
        centerTitle: true,
        title: const Text(
          'BMI CALCULATOR',
          style: kAppBarFontStyle,
        ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.bell,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
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
                    style: kTileHeadingFont,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ContainerCard(
                          color: selectedGender == Gender.male
                              ? kBorderColor
                              : kInactiveTileColor,
                          iconCheckColor: selectedGender == Gender.male
                              ? kBorderColor
                              : kCardIconFontColor,
                          icon: FontAwesomeIcons.person,
                          label: 'MALE',
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ContainerCard(
                          color: selectedGender == Gender.female
                              ? kBorderColor
                              : kInactiveTileColor,
                          iconCheckColor: selectedGender == Gender.female
                              ? kBorderColor
                              : kCardIconFontColor,
                          icon: FontAwesomeIcons.personDress,
                          label: 'FEMALE',
                        ),
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
                    style: kTileHeadingFont,
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
                              style: kCardFontStyle,
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
                            style: kDropDownFontStyle,
                            iconEnabledColor: Colors.black,
                            dropdownColor: Colors.white,
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
                    style: kTileHeadingFont,
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
                              style: kCardFontStyle,
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
                            style: kDropDownFontStyle,
                            iconEnabledColor: Colors.black,
                            dropdownColor: Colors.white,
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
                    style: kTileHeadingFont,
                  ),
                ),
                CardContainer(
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        style: kCardFontStyle,
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
                style: kBottomButtonFontStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
