import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class SinglePercentField extends StatefulWidget {
  final ValueNotifier<double> valueNotifier;

  SinglePercentField({
    this.valueNotifier,
  });

  @override
  _SinglePercentFieldState createState() => _SinglePercentFieldState();
}

class _SinglePercentFieldState extends State<SinglePercentField> {
  final BoxDecoration _boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4),
    border: Border.all(
      color: HexColor("#6200EE").withOpacity(0.24),
      width: 1,
      style: BorderStyle.solid,
    ),
  );

  final InputDecoration _inputDecoration = InputDecoration(
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
    suffixIconConstraints: BoxConstraints(
      minHeight: 0,
      minWidth: 0,
    ),
    suffixIcon: Text(
      "%",
      style: GoogleFonts.workSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: HexColor("#B6BFC2"),
        height: 1.5,
      ),
    ),
  );

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = "${widget.valueNotifier.value}";
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: MediaQuery.of(context).size.width * 0.4,
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      alignment: Alignment.center,
      decoration: _boxDecoration,
      child: TextField(
        keyboardType: TextInputType.number,
        style: GoogleFonts.workSans(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        controller: _controller,
        decoration: _inputDecoration,
        onEditingComplete: () {
          setState(() {
            widget.valueNotifier.value = double.parse(_controller.text);
          });
        },
        onSubmitted: (value) {
          setState(() {
            widget.valueNotifier.value = double.parse(value);
          });
        },
        onChanged: (value) {
          if (double.parse(value) > 100.0) {
            _controller.text = "100.0";
            value = "100.0";
          }

          setState(() {
            widget.valueNotifier.value = double.parse(value);
          });
        },
      ),
    );
  }
}
