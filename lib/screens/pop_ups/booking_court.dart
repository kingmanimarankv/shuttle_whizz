import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/booking_slot.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/outline_button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class BookingCourt extends StatelessWidget {
  BookingCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: ColorConstants.whiteColor,
        width: 617,
        height: 709,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(ImageConstants.badmintonGirls),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringConstants.courtName,
                      style: TextThemeConstants.subHeadingStyle),
                  Text(StringConstants.courtLocation,
                      style: TextThemeConstants.bodyTextStyle1),
                  Text(
                    StringConstants.courtDescriptionTitle,
                    style: TextThemeConstants.bodyTextStyle1
                        .copyWith(decoration: TextDecoration.underline),
                  ),
                  Text(
                    StringConstants.courtDescription,
                    style: TextThemeConstants.bodyTextStyle1,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    StringConstants.availableDate,
                    style: TextThemeConstants.buttonTextStyle,
                  ),
                  SizedBox(height: 14),
                  Row(
                    children: const [
                      BookingSlots(
                        content: StringConstants.bookingDate,
                        borderColor: ColorConstants.blackColor,
                        backgroundColor: ColorConstants.whiteColor,
                        textColor: ColorConstants.gray85,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      BookingSlots(
                        content: StringConstants.bookingDate,
                        borderColor: ColorConstants.orangeColor,
                        backgroundColor: ColorConstants.whiteColor,
                        textColor: ColorConstants.blackColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      BookingSlots(
                          content: StringConstants.bookingDate,
                          borderColor: ColorConstants.chelseaCucumber,
                          backgroundColor: ColorConstants.chelseaCucumber,
                          textColor: ColorConstants.blackColor),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    StringConstants.availableSlots,
                    style: TextThemeConstants.buttonTextStyle,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: const [
                      BookingSlots(
                        content: StringConstants.bookingTime,
                        borderColor: ColorConstants.blackColor,
                        backgroundColor: ColorConstants.whiteColor,
                        textColor: ColorConstants.gray85,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      BookingSlots(
                          content: StringConstants.bookingTime,
                          borderColor: ColorConstants.chelseaCucumber,
                          backgroundColor: ColorConstants.chelseaCucumber,
                          textColor: ColorConstants.blackColor),
                      SizedBox(
                        width: 5,
                      ),
                      BookingSlots(
                        content: StringConstants.bookingTime,
                        borderColor: ColorConstants.orangeColor,
                        backgroundColor: ColorConstants.whiteColor,
                        textColor: ColorConstants.blackColor,
                      ),
                    ],
                    
                  ),
                  SizedBox(height: 45,),
                  Center(child: Button()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
