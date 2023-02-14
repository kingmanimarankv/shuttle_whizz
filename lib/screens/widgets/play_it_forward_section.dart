import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/outline_button.dart';
import '../../constants/string_constants.dart';

class PlayItForwardSection extends StatelessWidget {
  PlayItForwardSection({super.key});
  List courts = [
    {
      "court_name": "Court-1",
      "court_address": "Something",
      "available_dates": "24 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    },
    {
      "court_name": "Court-1",
      "court_address": "Something",
      "available_dates": "24 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    },
    {
      "court_name": "Court-1",
      "court_address": "Something",
      "available_dates": "24 February 2023",
      "court_image":
          'https://5.imimg.com/data5/LR/GG/QH/SELLER-8295887/synthetic-badminton-shuttle-court-flooring-500x500.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1435,
      color: ColorConstants.aliceBlueColor,
      child: Column(children: [
        Text(
          StringConstants.playForward,
          style: TextThemeConstants.headingStyle,
        ),
        Text(StringConstants.playForwardSubTitle,
            style: TextThemeConstants.subTitleStyle),
        SizedBox(
          height: 42,
        ),
        SizedBox(
          height: 200,
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: courts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                  width: 241,
                  height: 196,
                  padding: EdgeInsets.all(13),
                  margin:EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: ColorConstants.blackColor.withOpacity(0.25)),
                  ),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment:CrossAxisAlignment.start,
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
                                  )),
                            ),
                            SizedBox(height: 5,),
                            Text(courts[index]['court_name'],
                                style: TextThemeConstants.subHeadingStyle),
                            Text(courts[index]['court_address'],
                                style: TextThemeConstants.bodyTextStyle1),
                          ],
                        ),
                        
                        RichText(
                          text: TextSpan(
                              style: TextThemeConstants.bodyTextStyle1,
                              children: [
                                TextSpan(text: StringConstants.availableFor),
                                TextSpan(
                                    text: courts[index]['available_dates'],
                                    style: TextThemeConstants.bodyTextStyle1
                                        .copyWith(fontWeight: FontWeight.w700))
                              ]),
                        ),
                        //Text('Available for 25,26,27 February 2023',style: TextThemeConstants.bodyTextStyle1,),
                      ])),
            ),
          ),
        ),
        SizedBox(height: 29,),
      OutlineButton(),
      ]),

    );
  }
}
