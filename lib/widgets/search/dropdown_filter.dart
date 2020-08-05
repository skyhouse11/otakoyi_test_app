import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class DropDownFilter extends StatefulWidget {
  final List<String> items;
  final bool hasHintText;
  final String hintText;
  final String overheadText;

  const DropDownFilter({
    this.items = const [],
    this.hasHintText = false,
    this.hintText = "",
    this.overheadText,
  });

  @override
  _DropDownFilterState createState() => _DropDownFilterState();
}

class _DropDownFilterState extends State<DropDownFilter> {
  String _currentValue;

  @override
  void initState() {
    super.initState();
    if (!widget.hasHintText) {
      _currentValue = widget.items[0];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 54,
          margin: EdgeInsets.only(
            bottom: 16,
            left: 16,
            right: 16,
            top: 8,
          ),
          padding: EdgeInsets.only(right: 8),
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
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              elevation: 0,
              itemHeight: 50,
              value: _currentValue,
              hint: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Text(
                  widget.hintText,
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              items: widget.items
                  .map(
                    (item) => DropdownMenuItem(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          item,
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      value: item,
                    ),
                  )
                  .toList(),
              onChanged: (item) {
                setState(() {
                  _currentValue = item;
                });
              },
            ),
          ),
        ),
        widget.overheadText != null
            ? Container(
                height: 14,
                alignment: Alignment.bottomCenter,
                width: 95,
                color: HexColor("#E8ECEE").withOpacity(0.38),
                margin: EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  widget.overheadText,
                  style: GoogleFonts.workSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: HexColor("#0D2834").withOpacity(0.6),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
