import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class Iconcontent extends StatelessWidget {
  Iconcontent({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:labeltextstyle,
        )
      ],
    );
  }
}

