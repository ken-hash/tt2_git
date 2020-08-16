import 'package:flutter/material.dart';


class NavSizedBox extends StatelessWidget  {
  NavSizedBox({this.inWidth, this.inText, @required this.onPressed});

  final double inWidth;
  final String inText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: inWidth,
        child:
          Center(
            child: Text(
              inText
            ),
          ),
      )
    );
  }
}