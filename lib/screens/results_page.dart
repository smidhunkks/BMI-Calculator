
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class Resultspage extends StatelessWidget {
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
            child: Text(
              'Your Result',
              style: titletextstyle,
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
                      'Normal',
                      style: resulttextstyle,
                    ),
                    Text(
                      '18.3',
                      style: bmistyle,
                    ),
                    Text(
                      'Bmi is low eat more',
                      style: bodytextstyle,
                    )
                  ],
                ),
              )),
             // Bottombutton(onTap: null, buttontitle: null)
        ],
      ),
    );
  }
}
