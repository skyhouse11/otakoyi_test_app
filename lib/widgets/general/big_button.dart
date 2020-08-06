import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class BigButton extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final String buttonColor;
  final bool toExpand;
  final double width;
  final EdgeInsets margin;
  final BorderSide borderSide;
  final Widget child;

  const BigButton({
    this.text,
    this.textStyle,
    this.buttonColor,
    this.toExpand = false,
    this.width,
    this.margin = const EdgeInsets.only(
      top: 32,
      bottom: 24,
      left: 16,
      right: 16,
    ),
    this.borderSide,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: toExpand
          ? MediaQuery.of(context).size.width
          : (width != null ? width : null),
      margin: margin,
      child: FlatButton(
        color: HexColor(buttonColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: borderSide != null
              ? borderSide
              : BorderSide(
                  color: HexColor(buttonColor),
                ),
        ),
        onPressed: () {},
        child: child != null
            ? child
            : Text(
                text,
                style: textStyle,
              ),
      ),
    );
  }
}
