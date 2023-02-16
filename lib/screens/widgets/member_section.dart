import 'package:flutter/material.dart';
import '../../common/theme/color_constants.dart';
import '../../common/theme/theme_text.dart';
import '../../common/widgets/button.dart';
import '../../constants/string_constants.dart';

class MembershipSection extends StatelessWidget {
  MembershipSection({super.key});

  final List membershipDetails = [
    {
      "member_type": 'Gold',
      "color": ColorConstants.yellowColor,
      "amount": '\$40',
      "description_1": "✅ 3 days of play allowed per week",
      "description_2": "✅ Book courts 4 days before the game day",
    },
    {
      "member_type": 'Silver',
      "color": ColorConstants.greyColor,
      "amount": '\$30',
      "description_1": "✅ 2 days of play allowed per week",
      "description_2": "✅ Book courts 3 days before the game day",
    },
    {
      "member_type": 'Bronze',
      "color": ColorConstants.rosyBrownColor,
      "amount": '\$20',
      "description_1": "✅ 1 day of play allowed per week",
      "description_2": "✅ Book courts 2 days before the game day",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      color: ColorConstants.aliceBlueColor,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            StringConstants.memberTitle,
            style: TextThemeConstants.headingStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            StringConstants.memberSubTitle,
            style: TextThemeConstants.subTitleStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: membershipDetails.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.blackColor.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 0.2,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  width: 250,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          color: membershipDetails[index]['color'],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Text(
                          membershipDetails[index]['member_type'],
                          style: TextThemeConstants.card1,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        color: ColorConstants.whiteColor,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              membershipDetails[index]["amount"],
                              style: TextThemeConstants.card2,
                            ),
                            Text(
                              StringConstants.perMonth,
                              style: TextThemeConstants.subTitleStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: membershipDetails[index]['color'],
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 150,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstants.whiteColor
                                      .withOpacity(0.5),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              bottom: 150,
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstants.whiteColor
                                      .withOpacity(0.5),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              top: 150,
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorConstants.whiteColor
                                      .withOpacity(0.5),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(child: Container()),
                                  Text(
                                    membershipDetails[index]["description_1"],
                                    style: TextThemeConstants.subTitleStyle
                                        .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    membershipDetails[index]["description_2"],
                                    style: TextThemeConstants.subTitleStyle
                                        .copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  const Button(
                                    buttonText: StringConstants.buyNow,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
