import 'package:flutter/material.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';
import '../../common/theme/color_constants.dart';
import '../../common/theme/theme_text.dart';
import '../../common/widgets/needHelpButton.dart';

class Member extends StatelessWidget {
 
  Member({super.key});
  
   List membershipcolor = [
    {"member_Color": ColorConstants.yellowColor, "member_type": 'Gold'},
    {"member_Color": ColorConstants.greyColor, "member_type": 'Silver'},
    {"member_Color": ColorConstants.rosyBrownColor, "member_type": 'Bronze'}
  ];
   List membership_details = [
    {
      "amount": '\$40',
      "month": "per month",
      "des1": "3 days of play allowed per week",
      "des2": "Book courts 4 days before the game day",
    },
    {
      "amount": '\$40',
      "month": "per month",
      "des1": "3 days of play allowed per week",
      "des2": "Book courts 4 days before the game day",
    },
    {
      "amount": '\$40',
      "month": "per month",
      "des1": "3 days of play allowed per week",
      "des2": "Book courts 4 days before the game day",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 718,
        width: double.infinity,
        color: ColorConstants.aliceBlueColor,
        child: Column(
          children: [
            Text(
              StringConstants.memberTitle,
              style: TextThemeConstants.headingStyle,
            ),
            Text(StringConstants.memberSubTitle,
                style: TextThemeConstants.subTitleStyle),
            const SizedBox(height: 35),
            SizedBox(
              height: 67,
              child: Center(
                  child: ListView.builder(
                shrinkWrap: true,
                itemCount: membershipcolor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin:const EdgeInsets.symmetric(horizontal: 18.5),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: membershipcolor[index]['member_Color'],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      border: Border.all(
                          color: ColorConstants.borderColor.withOpacity(0.25),
                          width: 1)),
                  height: 67,
                  width: 322,
                  child: Text(
                    membershipcolor[index]['member_type'],
                    style: TextThemeConstants.card1,
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
            ),
            SizedBox(
              height: 462,
              child: Center(
                  child: ListView.builder(
                shrinkWrap: true,
                itemCount: membership_details.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 18.5),
                  //padding: EdgeInsets.all(17),
                  width: 322,
                  decoration: BoxDecoration(
                      color: ColorConstants.whiteColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      border: Border.all(
                          color: ColorConstants.borderColor.withOpacity(0.25),
                          width: 1)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text("Gold",style: TextThemeConstants.card1,),
                        //SizedBox(height: 17),
                        Text(
                          membership_details[index]["amount"],
                          style: TextThemeConstants.card2,
                        ),
                        Text(
                          membership_details[index]['month'],
                          style: TextThemeConstants.card3,
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Container(
                          child: Column(children: [
                            Text(
                              membership_details[index]["des1"],
                              style: TextThemeConstants.card4,
                            ),
                            const SizedBox(height: 15),
                            Text(
                              membership_details[index]["des2"],
                              style: TextThemeConstants.card4,
                            ),
                            const SizedBox(
                              height: 53,
                            ),
                            const OutlineButton(),
                          ]),
                        )
                      ]),
                ),
              )),
            ),
          ],
        ));
  }
}
