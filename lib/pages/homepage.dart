import 'package:calculator/calculation/BMIcalculation.dart';
import 'package:calculator/reusables/bigFont.dart';
import 'package:calculator/reusables/calculateButton.dart';
import 'package:calculator/reusables/genderColumn.dart';
import 'package:calculator/reusables/mainContainer.dart';
import 'package:calculator/pages/resultpage.dart';
import 'package:calculator/reusables/roundButton.dart';
import 'package:calculator/reusables/smallFont.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum selectedGenter { male, female }

class _MyHomePageState extends State<MyHomePage> {
  bool? pressed;
  selectedGenter? gender;
  int height = 180;
  int weight = 50;
  int age = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("BMI Calculator"),
        backgroundColor: Color(0xFF171010),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = selectedGenter.male;
                      });
                    },
                    child: MainContainer(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            genderColumn(
                                "Male",
                                Icon(
                                  Icons.male,
                                  size: 70,
                                ))
                          ],
                        ),
                        gender == selectedGenter.male
                            ? Color(0xFF2B2B2B)
                            : Color(0xFF423F3E)),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = selectedGenter.female;
                      });
                    },
                    child: MainContainer(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            genderColumn(
                                "Female",
                                Icon(
                                  Icons.female,
                                  size: 70,
                                ))
                          ],
                        ),
                        gender == selectedGenter.female
                            ? Color(0xFF2B2B2B)
                            : Color(0xFF423F3E)),
                  ),
                ),
              ],
            )),
            Expanded(
              child: MainContainer(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      smallFont("Height"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          bigFont(height),
                          SizedBox(
                            width: 5,
                          ),
                          smallFont("cm")
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0xFFE5E5CB),
                            overlayColor: Color.fromARGB(124, 229, 229, 203),
                            activeTrackColor: Color(0xFFC69749),
                            inactiveTrackColor: Color(0xFF735F32),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20),
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 12,
                                disabledThumbRadius: 12)),
                        child: Slider(
                            min: 10,
                            max: 200,
                            value: height.toDouble(),
                            onChanged: (double val) {
                              setState(() {
                                height = val.round();
                              });
                            }),
                      )
                    ],
                  ),
                  Color(0xFF423F3E)),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: MainContainer(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            smallFont("Weight"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                bigFont(weight.toString()),
                                SizedBox(
                                  width: 5,
                                ),
                                smallFont("Kg")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RoundButton(
                                    icon: Icons.remove,
                                    onpressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                                RoundButton(
                                    icon: Icons.add,
                                    onpressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    })
                              ],
                            )
                          ],
                        ),
                        const Color(0xFF423F3E))),
                Expanded(
                    child: MainContainer(
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            smallFont("Age"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                bigFont(age.toString()),
                                SizedBox(
                                  width: 5,
                                ),
                                smallFont("Years")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RoundButton(
                                    icon: Icons.remove,
                                    onpressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                RoundButton(
                                    icon: Icons.add,
                                    onpressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    })
                              ],
                            )
                          ],
                        ),
                        const Color(0xFF423F3E))),
              ],
            )),
            GestureDetector(
                onTap: () {
                  setState(() {
                    pressed = true;
                  });
                  BMICalculation cal =
                      BMICalculation(age: age, height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => resultPage(
                                Advice: cal.advice(),
                                result: cal.getResult(),
                                calculation: cal.calculation(),
                              )));
                },
                child: CalculateButton(
                    color: pressed == true
                        ? Color.fromARGB(255, 138, 97, 32)
                        : Color(0xFFC69749),
                    text: "Calculate"))
          ],
        ),
      ),
    );
  }
}
