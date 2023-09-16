import 'package:flutter/material.dart';

import 'pages/BMI_Calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xff0a0e21)),
        scaffoldBackgroundColor: Color(0xff0a0e21),
      ),
      home: BMICalculator(),
    );
  }
}
