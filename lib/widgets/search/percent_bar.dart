import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class PercentBar extends StatefulWidget {
  final ValueNotifier<double> fromNotifier;
  final ValueNotifier<double> toNotifier;

  PercentBar({
    this.fromNotifier,
    this.toNotifier,
  });

  @override
  _PercentBarState createState() => _PercentBarState();
}

class _PercentBarState extends State<PercentBar> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.fromNotifier,
      builder: (BuildContext context, dynamic value, Widget child) {
        return ValueListenableBuilder(
          valueListenable: widget.toNotifier,
          builder: (BuildContext context, dynamic value, Widget child) {
            return Container(
              margin: EdgeInsets.only(
                top: 24,
              ),
              child: RangeSlider(
                values: RangeValues(
                  widget.fromNotifier.value,
                  widget.toNotifier.value,
                ),
                min: 0.0,
                max: 100.0,
                onChanged: (v) {},
                inactiveColor: HexColor("#C8A574"),
                activeColor: HexColor("#C8A574"),
              ),
            );
          },
        );
      },
    );
  }
}
