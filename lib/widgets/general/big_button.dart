import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class BigButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final String buttonColor;

  const BigButton({
    @required this.text,
    @required this.textStyle,
    @required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: EdgeInsets.only(
        top: 32,
        bottom: 24,
        left: 16,
        right: 16,
      ),
      child: FlatButton(
        color: HexColor(buttonColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
