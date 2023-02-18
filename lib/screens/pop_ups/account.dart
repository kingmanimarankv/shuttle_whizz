import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';

import '../../common/theme/text_theme.dart';
import '../../common/widgets/button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 617,
      height: 600,
      child: Column(
        children: [
          Text(StringConstants.accountProfile,
              style: TextThemeConstants.loginWelcome
                  .copyWith(color: ColorConstants.violetColor)),
          SizedBox(
            height: 61,
          ),
          Image.asset(ImageConstants.profileImage),
          SizedBox(
            height: 3,
          ),
          Text(StringConstants.userName,
              style: TextThemeConstants.subTitleStyle
                  .copyWith(fontWeight: FontWeight.w900,color: ColorConstants.violetColor)),
          SizedBox(
            height: 6,
          ),
          Text(
            StringConstants.userMembership,
            style: TextThemeConstants.bodyTextStyle1
                .copyWith(fontWeight: FontWeight.w900, height: 1.25,color: ColorConstants.violetColor),
          ),
          SizedBox(
            height: 58,
          ),
          Button(
            buttonText: StringConstants.upDownmembership,
            buttonColor: ColorConstants.aliceBlueColor,
          ),
          SizedBox(
            height: 9,
          ),
          Button(
            buttonText: StringConstants.updatePlayLevel,
            buttonColor: ColorConstants.aliceBlueColor,
          ),
          SizedBox(
            height: 9,
          ),
          Button(
            buttonText: StringConstants.signOut,
            buttonColor: ColorConstants.orangeColor,
          )
        ],
      ),
    );
  }
}
