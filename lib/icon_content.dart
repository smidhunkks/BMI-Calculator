import 'package:flutter/material.dart';

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
          style: TextStyle(fontSize: 25.0, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}

