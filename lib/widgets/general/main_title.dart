import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String titleText;

  const MainTitle({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(
        top: 16,
        bottom: 12,
        left: 16,
        right: 16,
      ),
      child: Text(
        titleText,
        style: GoogleFonts.workSans(
          fontSize: 24,
          height: 1.15,
          fontWeight: FontWeight.w600,
          letterSpacing: -0.75,
        ),
      ),
    );
  }
}
