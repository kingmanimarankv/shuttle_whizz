import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/widgets/button.dart';
import 'package:shuttle_whizz/constants/image_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';

class DiscountSection extends StatelessWidget {
  
   DiscountSection({super.key});

    List membershipDiscount =[
      {
        "member_img":ImageConstants.badmintonPlayer1,
        "member_title":StringConstants.discountTitle,
        "member_subTitle":StringConstants.discountSubTitle,
        "member_code":StringConstants.membershipCode
      },
      {
        "member_img":ImageConstants.badmintonPlayer1,
        "member_title":StringConstants.discountTitle,
        "member_subTitle":StringConstants.discountSubTitle,
        "member_code":StringConstants.membershipCode
      },
      {
        "member_img":ImageConstants.badmintonPlayer1,
        "member_title":StringConstants.discountTitle,
        "member_subTitle":StringConstants.discountSubTitle,
        "member_code":StringConstants.membershipCode
      }
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.whiteColor,
      width: double.infinity,
      height: 359,
      padding: EdgeInsets.only(top: 40, bottom: 70, right: 255, left: 255),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorConstants.darkSalmonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 48, top: 56),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringConstants.discountTitle,
                      style: TextThemeConstants.headingStyle
                          .copyWith(color: ColorConstants.whiteColor)),
                  Text(StringConstants.discountSubTitle,
                      style: TextThemeConstants.subTitleStyle
                          .copyWith(color: ColorConstants.whiteColor)),
                          SizedBox(height: 17),
                  Text(StringConstants.membershipCode,
                      style: TextThemeConstants.bodyTextStyle1
                          .copyWith(color: ColorConstants.whiteColor))
                ],
              ),
            ),
            Container(
              height: 195,
              width: 195,
              padding: EdgeInsets.only(right: 70),
              child: Image(
                // height: 195,
                // width:195,
                image: AssetImage(ImageConstants.badmintonPlayer1),
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
