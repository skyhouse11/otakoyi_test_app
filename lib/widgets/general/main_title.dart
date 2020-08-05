import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String titleText;

  const MainTitle({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.all(16),
      child: Text(
        titleText,
        style: TextStyle(
          fontSize: 24,
          height: 1.15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
