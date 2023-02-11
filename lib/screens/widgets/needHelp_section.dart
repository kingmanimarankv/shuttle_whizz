import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/widgets/button.dart';
import 'package:shuttle_whizz/constants/image_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

import '../../common/theme/color_constants.dart';
import '../../common/widgets/needHelpButton.dart';

class NeedHelpSection extends StatelessWidget {
  const NeedHelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.needHelpColor,
      width: double.infinity,
      height: 359,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(StringConstants.needHelpHeading,
            style: GoogleFonts.poppins(
                color: ColorConstants.whiteColor,
                fontWeight: FontWeight.w900,
                fontSize: 50)),
                SizedBox(height: 8,),
        Text(StringConstants.needHelpSubHeading,
            style: GoogleFonts.lato(
                color: ColorConstants.whiteColor,
                fontWeight: FontWeight.w300,
                fontSize: 20)),
                SizedBox(height:39),
        NeedHelpButton(),
      ]),
    );
  }
}
