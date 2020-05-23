import 'package:flutter/material.dart';
import 'constants.dart';
class Bottombutton extends StatelessWidget {
 
Bottombutton({@required this.onTap,@required this.buttontitle});

  final String buttontitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        child: Center(
            child: Text(
          buttontitle,
          style: Largebuttonstyle,
        )),
        color: bottomcontainercolor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerheight,
      ),
    );
  }
}
