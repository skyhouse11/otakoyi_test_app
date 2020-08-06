import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class TopTagContainer extends StatelessWidget {
  final String initialText;
  final int ammount;

  const TopTagContainer({
    this.ammount,
    this.initialText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: HexColor("#C8A574"),
          width: 1,
        ),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: initialText,
              style: GoogleFonts.workSans(
                fontSize: 13,
                color: HexColor("#B6BFC2"),
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: "$ammount",
              style: GoogleFonts.workSans(
                fontSize: 13,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
