import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';
import 'package:otakoyi_test_app/widgets/appbar/notification_icon.dart';
import 'package:otakoyi_test_app/widgets/case/case_column.dart';
import 'package:otakoyi_test_app/widgets/general/big_button.dart';
import 'package:otakoyi_test_app/widgets/general/main_title.dart';
import 'package:otakoyi_test_app/widgets/search/dropdown_filter.dart';
import 'package:otakoyi_test_app/widgets/search/main_search_textfield.dart';
import 'package:otakoyi_test_app/widgets/search/percent_bar.dart';
import 'package:otakoyi_test_app/widgets/search/single_percent_field.dart';

class MainView extends StatelessWidget {
  final ValueNotifier<double> fromNotifier = ValueNotifier<double>(0.0);
  final ValueNotifier<double> toNotifier = ValueNotifier<double>(100.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        showUnselectedLabels: true,
        unselectedItemColor: HexColor("#0D2834").withOpacity(0.38),
        selectedItemColor: HexColor("#0D2834"),
        iconSize: 30,
        elevation: 100,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              "Search",
              style: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text(
              "Refer",
              style: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            title: Text(
              "Messages",
              style: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text(
              "Profile",
              style: GoogleFonts.workSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
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
      body: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: HexColor("#E8ECEE").withOpacity(0.38),
          child: ListView(
            padding: EdgeInsets.zero,
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
                overheadText: "Area of practice",
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
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(
                  thickness: 1,
                  color: HexColor("#B6BFC2").withOpacity(0.6),
                ),
              ),
              MainTitle(
                titleText: "Choose the rate",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SinglePercentField(
                    valueNotifier: fromNotifier,
                  ),
                  Container(
                    width: 16,
                    height: 1,
                    child: Divider(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      thickness: 2,
                    ),
                  ),
                  SinglePercentField(
                    valueNotifier: toNotifier,
                  ),
                ],
              ),
              PercentBar(
                fromNotifier: fromNotifier,
                toNotifier: toNotifier,
              ),
              BigButton(
                text: "Apply Filters",
                textStyle: GoogleFonts.workSans(
                  color: Colors.white,
                  fontSize: 16,
                ),
                buttonColor: "#0D2834",
              ),
              CaseColumn(
                caseTitle: "John Smith | Smith Law Firm",
                amountOfBidders: 12,
                amountOfInterviewers: 5,
              ),
              CaseColumn(
                caseTitle: "John Smith | Smith Law Firm",
                amountOfBidders: 0,
                amountOfInterviewers: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
