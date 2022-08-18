import 'package:flutter/material.dart';
import 'package:bmi_calc/reuseable/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.resultText, required this.bmiResult, required this.resultInterpretation});
  final String resultText;
  final String bmiResult;
  final String resultInterpretation;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          FontAwesomeIcons.barsStaggered,
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
        const Expanded(
          child: Center(
            child: Text(
              'Result',
              style: kResultScreenHeadingFont,
            ),
          ),
        ),
        //Second Tile
        Expanded(
          flex: 7,
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kInactiveTileColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  bmiResult,
                  style: kBmiResultFont,
                ),
                Text(
                  resultText,
                  style: kResultScoreFont,
                ),
              ],
            ),
          ),
        ),
        //Third Tile
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              resultInterpretation,
              textAlign: TextAlign.center,
              style: kResultInterpretationFont,
            ),
          ),
        ),
        //Fourth Tile
        Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          color: Colors.green,
          height: 50,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'RE-CALCULATE',
              style: kBottomButtonFontStyle,
            ),
          ),
        ),
      ],
    ),
    );
  }
}

