import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 50),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            StringConstants.preferenceSectionHeading,
            style: TextThemeConstants.headingStyle,
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: content.entries
                .map(
                  (e) => Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 150,
                    child: Expanded(
                      child: Column(
                        children: [
                          const Image(
                            image: AssetImage(ImageConstants.spadeIcon),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            e.key,
                            style: TextThemeConstants.subTitleStyle.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            e.value,
                            style: TextThemeConstants.bodyTextStyle1.copyWith(
                              height: 1.3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
