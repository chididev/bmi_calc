import 'package:bmi_calc/reuseable/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc/screens/ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kAppBackgroundColor,
        primaryColor: kCardIconColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kAppBackgroundColor,
          centerTitle: true,
        ),
      ),
      home: const UiPage(),
    );
  }
}
