import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
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
            style: TextThemeConstants.headingStyle.copyWith(color:ColorConstants.whiteColor)),
                const SizedBox(height: 8,),
        Text(StringConstants.needHelpSubTitle,
            style: TextThemeConstants.subTitleStyle.copyWith(color:ColorConstants.whiteColor)),
                const SizedBox(height:39),
        const OutlineButton(),
      ]),
    );
  }
}
