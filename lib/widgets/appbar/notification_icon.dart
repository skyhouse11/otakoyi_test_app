import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';

class NotificationIconButton extends StatelessWidget {
  const NotificationIconButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: InkWell(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Icon(
              Icons.notifications,
              size: 36,
              color: Colors.white.withOpacity(0.6),
            ),
            Container(
              margin: EdgeInsets.only(
                bottom: 18,
                left: 28,
              ),
              padding: EdgeInsets.all(3),
              child: Text(
                "12",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: HexColor("#21CA7C"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
