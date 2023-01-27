import 'package:calculator/pages/homepage.dart';
import 'package:calculator/pages/resultpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(255, 33, 22, 22),
          backgroundColor: Color(0xFF362222),
          primaryColor: Color(0xFF362222)),
      home: const MyHomePage(),
    );
  }
}
