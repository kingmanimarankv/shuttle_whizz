import 'package:flutter/material.dart';
import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class SuccessfulBooking extends StatelessWidget {
  const SuccessfulBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: ColorConstants.whiteColor,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorConstants.blackColor.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 0.2,
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(ImageConstants.calenderImage),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "25 January 2023",
                          style: TextThemeConstants.subHeadingStyle.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Thursday",
                          style: TextThemeConstants.bodyTextStyle1,
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(ImageConstants.locationImage),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Court - 1",
                          style: TextThemeConstants.subHeadingStyle.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ontario -MVM 789 4457",
                          style: TextThemeConstants.bodyTextStyle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageConstants.clockImage),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "11 PM -12 PM",
                  style: TextThemeConstants.subHeadingStyle
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Image.asset(ImageConstants.qrImage),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              StringConstants.condition,
              style: TextThemeConstants.bodyTextStyle1.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              StringConstants.conditionDescrption,
              style: TextThemeConstants.bodyTextStyle1,
            ),
          ],
        ),
      ),
    );
  }
}
