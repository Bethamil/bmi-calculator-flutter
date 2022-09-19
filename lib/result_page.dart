import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI BEREKENEN'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Center(
                child: Text(
                  'Jouw Resultaat',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
              padding: EdgeInsets.only(top: 50),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        resultText.toUpperCase(),
                        style: TextStyle(
                            color: double.parse(bmiResult) > 25 ||
                                    double.parse(bmiResult) < 18.5
                                ? Colors.red
                                : Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Center(
                      child: Text(
                        bmiResult,
                        style: TextStyle(
                            fontSize: 100, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InputPage();
                    },
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'HERBEREKEN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                color: kBottomContainerColour,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            )
          ],
        ));
  }
}
