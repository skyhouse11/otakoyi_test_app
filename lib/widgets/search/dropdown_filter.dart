import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class DropDownFilter extends StatefulWidget {
  final List<String> items;
  final bool hasHintText;
  final String hintText;

  const DropDownFilter({
    this.items = const [],
    this.hasHintText = false,
    this.hintText = "",
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
    return Container(
      height: 54,
      margin: EdgeInsets.only(
        bottom: 24,
        left: 16,
        right: 16,
      ),
      padding: EdgeInsets.only(right: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
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
                      style: TextStyle(),
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
    );
  }
}
