import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class Resultspage extends StatelessWidget {
Resultspage({@required this.bmiresult,@required this.resultText,@required this.interpretation});
  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                'Your Result',
                style: titletextstyle,
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activecardclr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase() ,
                    style: resulttextstyle,
                  ),
                  Text(
                    bmiresult,
                    style: bmistyle,
                  ),
                  Text(
                    interpretation,
                    textAlign:TextAlign.center,
                    style: bodytextstyle,
                  )
                ],
              ),
            ),
          ),
          Bottombutton(
              onTap: () {
                Navigator.pop(context);
              },
              buttontitle: 'RE-Calculate'),
        ],
      ),
    );
  }
}
