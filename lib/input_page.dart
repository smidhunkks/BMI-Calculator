import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerheight = 80.0;
const activecardclr = Color(0xFF1D1E33);
const bottomcontainercolor = Color(0xFFEB1555);
const inactiveclr = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactiveclr;
  Color femalecardcolor = inactiveclr;
  Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                    colour: selectedgender == Gender.male
                        ? activecardclr
                        : inactiveclr,
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.female;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedgender == Gender.female
                        ? activecardclr
                        : inactiveclr,
                    cardChild: Iconcontent(
                      icon: FontAwesomeIcons.venus,
                      label: "Female",
                    ),
                  ),
                )),
              ],
            )),
            Expanded(child: ReusableCard(colour: activecardclr)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: activecardclr)),
                Expanded(child: ReusableCard(colour: activecardclr)),
              ],
            )),
            Container(
              color: bottomcontainercolor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerheight,
            )
          ],
        ));
  }
}
