import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/theme/text_theme.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class PreferenceSection extends StatelessWidget {
  PreferenceSection({super.key});
  final Map<String, String> content = {
    StringConstants.proCoaching: StringConstants.proCoachingSubTitle,
    StringConstants.allAges: StringConstants.allAgesSubTitle,
    StringConstants.memberships: StringConstants.membershipsSubTitle,
    StringConstants.allSkillLevels: StringConstants.allSkillLevelsSubTitle,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 359,
      child: Column(
        children: [
          Text(StringConstants.preferenceSectionHeading,
              style: TextThemeConstants.headingStyle),
          const SizedBox(height: 56),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: content.entries
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24.5),
                        width: 165,
                        child: Expanded(
                          child: Column(
                            children: [
                              const Image(
                                image: AssetImage(ImageConstants.spadeIcon),
                              ),
                              const SizedBox(
                                height: 13.57,
                              ),
                              Text(
                                e.key,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700, fontSize: 20),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                e.value,
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 10,
                                    height: 1.3),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList())
        ],
      ),
    );
  }
}
