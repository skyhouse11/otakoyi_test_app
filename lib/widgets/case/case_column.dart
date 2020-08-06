import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';
import 'package:otakoyi_test_app/widgets/case/bottom_parameter.dart';
import 'package:otakoyi_test_app/widgets/case/middle_tag.dart';
import 'package:otakoyi_test_app/widgets/case/top_tag_container.dart';
import 'package:otakoyi_test_app/widgets/general/main_title.dart';

class CaseColumn extends StatelessWidget {
  final String caseTitle;
  final int amountOfBidders;
  final int amountOfInterviewers;

  CaseColumn({
    this.caseTitle,
    this.amountOfBidders,
    this.amountOfInterviewers,
  });

  final List<Map<String, dynamic>> dataForCase = [
    {
      "title": "Min referral fee",
      "data": "30%",
    },
    {
      "title": "Area of practice",
      "data": "Personal injury",
    },
    {
      "title": "Posted",
      "data": "Sep 19, 2019",
    },
    {
      "title": "Represent",
      "data": "PLaintiff",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MainTitle(
            titleText: caseTitle,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              bottom: 24,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TopTagContainer(
                  initialText: "Bidders: ",
                  ammount: amountOfBidders,
                ),
                SizedBox(
                  width: 8,
                ),
                TopTagContainer(
                  initialText: "Interviewers: ",
                  ammount: amountOfInterviewers,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Text(
              "Feugiat, occaecati arcu magna explicabo cons ectetur tempore quos fugiat dolorasperna tur varius, gravida quas, autem consectetur hic faucibus nesciunt, arcu consectetu raute...",
              style: GoogleFonts.workSans(
                fontSize: 14,
                height: 1.65,
                letterSpacing: -0.5,
                color: HexColor("#0D2834").withOpacity(0.6),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: <Widget>[
                MiddleTag(
                  grayOut: false,
                  icon: null,
                  text: "Auto accident",
                ),
                SizedBox(
                  width: 8,
                ),
                MiddleTag(
                  grayOut: true,
                  icon: Icons.location_on,
                  text: "Los Angeles Country, CA",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              children: <Widget>[
                MiddleTag(
                  grayOut: true,
                  icon: Icons.account_balance,
                  text: "Los Angeles Country, CA",
                ),
                SizedBox(
                  width: 8,
                ),
                MiddleTag(
                  grayOut: true,
                  icon: Icons.calendar_today,
                  text: "Sep 19, 2019",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: GridView.builder(
              itemCount: 4,
              padding: EdgeInsets.all(0.0),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 5),
              ),
              itemBuilder: (context, index) {
                return BottomParameter(
                  data: dataForCase[index]["data"],
                  title: dataForCase[index]["title"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
