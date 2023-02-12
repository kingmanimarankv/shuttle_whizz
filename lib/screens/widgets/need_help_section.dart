import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

import '../../common/theme/color_constants.dart';
import '../../common/widgets/outline_button.dart';

class HelpSection extends StatelessWidget {
  const HelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.violetColor,
      width: double.infinity,
      height: 359,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(StringConstants.needHelp,
            style: GoogleFonts.poppins(
                color: ColorConstants.whiteColor,
                fontWeight: FontWeight.w900,
                fontSize: 50)),
                const SizedBox(height: 8,),
        Text(StringConstants.needHelpSubTitle,
            style: GoogleFonts.lato(
                color: ColorConstants.whiteColor,
                fontWeight: FontWeight.w300,
                fontSize: 20)),
                const SizedBox(height:39),
        const OutlineButton(),
      ]),
    );
  }
}
