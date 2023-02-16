import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/outline_button.dart';
import '../../constants/string_constants.dart';

class PlayItForwardSection extends StatelessWidget {
  PlayItForwardSection({super.key});
  final List courts = [
    {
      "court_name": "Court-1",
      "court_address": "Burlington, ON L7M0M4",
      "available_dates": "24, 25, 26 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    },
    {
      "court_name": "Court-2",
      "court_address": "Burlington, ON L7M0M4",
      "available_dates": "24 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    },
    {
      "court_name": "Court-3",
      "court_address": "Burlington, ON L7M0M4",
      "available_dates": "25, 26 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      color: ColorConstants.aliceBlueColor,
      child: Column(children: [
        Text(
          StringConstants.playForward,
          style: TextThemeConstants.headingStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          StringConstants.playForwardSubTitle,
          style: TextThemeConstants.subTitleStyle,
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: courts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Container(
                  width: 220,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.blackColor.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 0.2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  courts[index]['court_image'],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            courts[index]['court_name'],
                            style: TextThemeConstants.subHeadingStyle,
                          ),
                          Text(
                            courts[index]['court_address'],
                            style: TextThemeConstants.bodyTextStyle1,
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      RichText(
                        text: TextSpan(
                          style: TextThemeConstants.bodyTextStyle1,
                          children: [
                            const TextSpan(
                              text: StringConstants.availableFor,
                            ),
                            TextSpan(
                              text: courts[index]['available_dates'],
                              style: TextThemeConstants.bodyTextStyle1
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 29,
        ),
        OutlineButton(
          buttonText: StringConstants.viewAllCourts,
          borderColor: ColorConstants.blackColor.withOpacity(0.25),
          textColor: ColorConstants.blackColor,
        ),
      ]),
    );
  }
}
