import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';
import 'package:otakoyi_test_app/widgets/appbar/notification_icon.dart';
import 'package:otakoyi_test_app/widgets/general/main_title.dart';
import 'package:otakoyi_test_app/widgets/search/dropdown_filter.dart';
import 'package:otakoyi_test_app/widgets/search/main_search_textfield.dart';

class MainView extends StatelessWidget {
  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: HexColor("#0D2834"),
          title: Image.asset(
            "assets/appbar_logo.png",
            height: 32,
            width: 131,
            fit: BoxFit.cover,
          ),
          actions: <Widget>[
            NotificationIconButton(),
          ],
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Column(
        children: <Widget>[
          MainSearchTextField(),
          MainTitle(
            titleText: "Filters",
          ),
          DropDownFilter(
            items: [
              "All areas",
              "Elsewhere",
            ],
            hasHintText: false,
          ),
          DropDownFilter(
            items: [
              "Accident",
              "Failure",
              "Attack",
            ],
            hasHintText: true,
            hintText: "Type of case",
          ),
          DropDownFilter(
            items: [
              "California",
              "Washington",
            ],
            hasHintText: true,
            hintText: "State",
          ),
        ],
      ),
    );
  }
}
