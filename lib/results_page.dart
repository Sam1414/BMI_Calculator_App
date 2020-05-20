import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22.0,
                    ),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(1.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
