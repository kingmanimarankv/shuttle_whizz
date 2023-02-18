import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/outline_button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 617,
        height: 600,
        decoration: BoxDecoration(
          color: ColorConstants.whiteColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(textAlign:TextAlign.center,StringConstants.loginWelcome,
                style: TextThemeConstants.loginWelcome
                    .copyWith(color: ColorConstants.violetColor,)),
            SizedBox(height: 13),
            Text(StringConstants.requestCredentials,
                style: TextThemeConstants.bodyTextStyle1.copyWith(
                    color: ColorConstants.violetColor,
                    height: 1.2,
                    fontSize: 15)),
            SizedBox(height: 20),
            SizedBox(
              height: 48,
              width: 328,
              child: TextField(
                  decoration: InputDecoration(
                hintStyle: TextThemeConstants.bodyTextStyle2
                    .copyWith(color: ColorConstants.violetColor),
                hintText:StringConstants.loginMenberID,
                fillColor: ColorConstants.whiteColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.lightSilver,
                      width: 0.5,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
            ),
            SizedBox(height: 13),
            SizedBox(
              height: 48,
              width: 328,
              child: TextField(
                  decoration: InputDecoration(
                hintStyle: TextThemeConstants.bodyTextStyle2
                    .copyWith(color: ColorConstants.violetColor),
                hintText:StringConstants.loginPassword,
                fillColor: ColorConstants.whiteColor,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.lightSilver,
                      width: 0.5,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(8),
                ),
              )),
            ),
            SizedBox(
              height: 25,
            ),
            Button(buttonText: "Submit"),
            SizedBox(
              height: 35,
            ),
            Text(
              "or",
              style: TextThemeConstants.bodyTextStyle1,
            ),
            SizedBox(
              height: 35,
            ),
            Button(
                buttonText: "Sign in with Google",
                image: ImageConstants.googleImage,
                buttonColor: ColorConstants.aliceBlueColor),
          ],
        ));
  }
}
