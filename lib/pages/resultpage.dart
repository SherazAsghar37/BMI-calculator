import 'package:calculator/pages/homepage.dart';
import 'package:calculator/reusables/bigFont.dart';
import 'package:calculator/reusables/calculateButton.dart';
import 'package:calculator/reusables/mainContainer.dart';
import 'package:calculator/reusables/smallFont.dart';
import 'package:flutter/material.dart';

class resultPage extends StatelessWidget {
  final String result;
  final String Advice;
  final String calculation;
  resultPage(
      {required this.Advice, required this.result, required this.calculation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ResultPage"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: bigFont("Result"),
            ),
            //colour:Color(0xFF423F3E)
            Expanded(
                flex: 5,
                child: MainContainer(
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          result,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        bigFont(calculation),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: smallFont(Advice),
                        )
                      ],
                    ),
                    Color(0xFF423F3E))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: CalculateButton(
                color: Color(0xFFC69749),
                text: "Re Calculate",
              ),
            )
          ],
        ),
      ),
    );
  }
}
