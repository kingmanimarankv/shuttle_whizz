import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';

import '../../common/theme/text_theme.dart';
import '../../common/widgets/button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: ColorConstants.violetColor,
              child: Center(
                child: Text(
                  "J",
                  textAlign: TextAlign.center,
                  style: TextThemeConstants.headingStyle.copyWith(
                    color: ColorConstants.whiteColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              StringConstants.userName,
              textAlign: TextAlign.center,
              style: TextThemeConstants.subTitleStyle.copyWith(
                fontWeight: FontWeight.w900,
                color: ColorConstants.violetColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              StringConstants.userMembership,
              textAlign: TextAlign.center,
              style: TextThemeConstants.bodyTextStyle1.copyWith(
                fontWeight: FontWeight.w900,
                color: ColorConstants.violetColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              StringConstants.playerLevel,
              textAlign: TextAlign.center,
              style: TextThemeConstants.bodyTextStyle1.copyWith(
                fontWeight: FontWeight.w900,
                color: ColorConstants.violetColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Button(
              buttonText: StringConstants.upDownmembership,
              buttonColor: ColorConstants.aliceBlueColor,
            ),
            const SizedBox(
              height: 15,
            ),
            const Button(
              buttonText: StringConstants.updatePlayLevel,
              buttonColor: ColorConstants.aliceBlueColor,
            ),
            const SizedBox(
              height: 15,
            ),
            const Button(
              buttonText: StringConstants.signOut,
            )
          ],
        ),
      ),
    );
  }
}
