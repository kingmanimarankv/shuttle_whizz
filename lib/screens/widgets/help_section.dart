import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConstants.needHelp,
            style: TextThemeConstants.headingStyle.copyWith(
              color: ColorConstants.whiteColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            StringConstants.needHelpSubTitle,
            style: TextThemeConstants.subTitleStyle.copyWith(
              color: ColorConstants.whiteColor,
            ),
          ),
          const SizedBox(height: 50),
          const OutlineButton(
            buttonText: StringConstants.contactUs,
            borderColor: ColorConstants.whiteColor,
            textColor: ColorConstants.whiteColor,
          ),
        ],
      ),
    );
  }
}
