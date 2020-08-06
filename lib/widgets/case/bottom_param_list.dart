import 'package:flutter/material.dart';
import 'package:otakoyi_test_app/widgets/case/bottom_parameter.dart';

class BottomParamList extends StatelessWidget {
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
    );
  }
}
