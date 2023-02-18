import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class SuccessfulBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 617,
      height: 766,
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ColorConstants.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
                width: 44.98,
                height: 44.68,
                decoration: BoxDecoration(
                    color: ColorConstants.orangeColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(ImageConstants.tickImage)),
          ),
          SizedBox(height: 35.66),
          Center(
            child: Column(
              children: [
                Text(
                  StringConstants.congratulations,
                  style: TextThemeConstants.loginWelcome
                      .copyWith(color: ColorConstants.violetColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  StringConstants.bookingConfirmation,
                  style:
                      TextThemeConstants.bodyTextStyle1.copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 324,
                  height: 369,
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 23),
                  color: ColorConstants.aliceBlueColor,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(ImageConstants.calenderImage),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "25 January 2023",
                                style: TextThemeConstants.subHeadingStyle
                                    .copyWith(fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "Thursday",
                                style: TextThemeConstants.bodyTextStyle1,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          VerticalDivider(
                              width: 1, color: ColorConstants.gainsboro),
                          SizedBox(
                            width: 13,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(ImageConstants.locationImage),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Court-1",
                                      style: TextThemeConstants.subHeadingStyle
                                          .copyWith(
                                              fontWeight: FontWeight.w900)),
                                  Text(
                                    "Ontario-MVM7894457",
                                    style: TextThemeConstants.bodyTextStyle1,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(thickness: 1, color: ColorConstants.gainsboro),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageConstants.clockImage),
                          Text(
                            "11 PM -12 PM",
                            style: TextThemeConstants.subHeadingStyle
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Divider(thickness: 1, color: ColorConstants.gainsboro),
                      SizedBox(
                        height: 22.5,
                      ),
                      Image.asset(ImageConstants.qrImage),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text(
            StringConstants.condition,
            style: TextThemeConstants.bodyTextStyle1
                .copyWith(decoration: TextDecoration.underline),
          ),
          Text(StringConstants.conditionDescrption,
              style: TextThemeConstants.bodyTextStyle1),
        ],
      ),
    );
  }
}
