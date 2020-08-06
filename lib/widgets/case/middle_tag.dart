import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class MiddleTag extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool grayOut;

  const MiddleTag({
    this.icon,
    this.text,
    this.grayOut = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: grayOut
              ? HexColor("#0D2834").withOpacity(0.6)
              : HexColor("#C8A574"),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (icon != null)
            Icon(
              icon,
              color: HexColor("#0D2834").withOpacity(0.6),
              size: 15,
            ),
          if (icon != null)
            SizedBox(
              width: 4,
            ),
          Text(
            text,
            style: GoogleFonts.workSans(
              color: grayOut
                  ? HexColor("#0D2834").withOpacity(0.6)
                  : HexColor("#0D2834"),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
