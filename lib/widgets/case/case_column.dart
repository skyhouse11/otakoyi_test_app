import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otakoyi_test_app/util/hex_color.dart';
import 'package:otakoyi_test_app/widgets/case/bottom_param_list.dart';
import 'package:otakoyi_test_app/widgets/case/middle_tag.dart';
import 'package:otakoyi_test_app/widgets/case/top_tag_container.dart';
import 'package:otakoyi_test_app/widgets/general/big_button.dart';
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
          BottomParamList(),
          amountOfBidders != 0
              ? BigButton(
                  buttonColor: "#C8A574",
                  toExpand: true,
                  margin: EdgeInsets.only(
                    bottom: 12,
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "More about the Bidders",
                        style: GoogleFonts.workSans(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BigButton(
                width: MediaQuery.of(context).size.width * 0.45,
                buttonColor: "#FFFFFF",
                text: "Edit",
                textStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: HexColor("#0D2834"),
                  height: 1.5,
                ),
                borderSide: BorderSide(
                  color: HexColor("#B6BFC2"),
                  width: 2,
                ),
                margin: EdgeInsets.only(
                  bottom: 12,
                  left: 16,
                  right: 4,
                ),
              ),
              BigButton(
                width: MediaQuery.of(context).size.width * 0.45,
                buttonColor: "#FFFFFF",
                text: "Delete",
                textStyle: GoogleFonts.workSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: HexColor("#EB5757"),
                  height: 1.5,
                ),
                borderSide: BorderSide(
                  color: HexColor("#EB5757"),
                  width: 2,
                ),
                margin: EdgeInsets.only(
                  bottom: 12,
                  left: 4,
                  right: 16,
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            child: Divider(
              color: HexColor("#B6BFC2").withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
