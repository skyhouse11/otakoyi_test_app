import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class MainSearchTextField extends StatelessWidget {
  const MainSearchTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: HexColor("#6200EE").withOpacity(0.24),
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
        bottom: 8,
      ),
      padding: EdgeInsets.only(
        left: 16,
        top: 4,
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        style: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          hintText: "Search for cases",
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintStyle: GoogleFonts.workSans(
            fontSize: 16,
            color: HexColor("#0D2834").withOpacity(0.38),
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: Icon(
            Icons.search,
            size: 28,
            color: HexColor("#C8A574"),
          ),
        ),
      ),
    );
  }
}
