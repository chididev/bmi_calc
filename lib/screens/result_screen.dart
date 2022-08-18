import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({required this.resultText, required this.bmiResult, required this.resultInterpretation});
  final String resultText;
  final String bmiResult;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //First Tile
        const Expanded(
          child: Center(
            child: Text(
              'Result',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        //Second Tile
        Expanded(
          flex: 5,
          child: Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  bmiResult,
                  style: const TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  resultText,
                  style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              resultInterpretation,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
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

