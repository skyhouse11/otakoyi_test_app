import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class BottomParameter extends StatelessWidget {
  final String title;
  final String data;

  const BottomParameter({
    this.data,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              title,
              style: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.65,
                color: HexColor("#0D2834").withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              data,
              style: GoogleFonts.workSans(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.65,
                color: HexColor("#0D2834"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
