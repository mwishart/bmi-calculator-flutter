import 'file:///C:/Users/Mary/Documents/GitHub/bmi-calculator-flutter/lib/conponents/bottom_button.dart';
import 'file:///C:/Users/Mary/Documents/GitHub/bmi-calculator-flutter/lib/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../conponents/reusable_card.dart';
import 'package:bmi_calculator/calculator_brain.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiResults, @required this.resultText, @required this.interpretation});

  final String bmiResults;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style: kTitleResults,
              ),
            ),
          ),
          Expanded(
            flex: 5,
              child: Reusablecard(colour: kinActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(resultText.toUpperCase(),
                      style: kresultTextStyle),
                      Text(
                        bmiResults,
                        style: kBMITextStyle
                      ),
                      Text(interpretation,
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle)
                    ],
                  ),),),
          Expanded(
            child: BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
                }
              ,
            )
          )
        ],
      ),
    );
  }
}
