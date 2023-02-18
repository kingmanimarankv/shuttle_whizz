import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/theme/text_theme.dart';

import '../../common/theme/color_constants.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  int currentIndex = 0;

  List slides = [
    {
      "color": Colors.pink.shade500,
      "heading": "Upto 50% discount",
      "subheading": "on your Gold membership purchase",
      "body": "USE CODE : SHUTTLE50",
      "image":
          'data:image/jpeg;base64,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',
    },
    {
      "color": Colors.green.shade500,
      "heading": "Kids Professional Coaching",
      "subheading": "Coaching Fees: \$225",
      "body":
          "> 10 Sessions\n> Upto 1.5 hours per session\n> Starts from January 25 2023",
      "image":
          'https://media.istockphoto.com/id/531930039/photo/little-asian-girl-holding-a-badminton-racket.jpg?s=612x612&w=0&k=20&c=q0tlU0NOls_WDbRmG1r6UNzkXfu1FlRyBgZJB1WbMqQ=',
    },
  ];
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  void initState() {
    super.initState();
    Timer.periodic(
      const Duration(seconds: 2),
      (timer) {
        setState(() {
          if (currentIndex < slides.length - 1) {
            currentIndex += 1;
          } else {
            currentIndex = 0;
          }
          pageController.animateToPage(
            currentIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      color: ColorConstants.aliceBlueColor,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 300,
            width: 1000,
            child: PageView.builder(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: slides.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: slides[index]["color"],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.whiteColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 500,
                      bottom: 0,
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.whiteColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 300,
                      top: 150,
                      bottom: 100,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorConstants.whiteColor.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  slides[index]["heading"],
                                  style:
                                      TextThemeConstants.headingStyle.copyWith(
                                    fontSize: 40,
                                    color: ColorConstants.whiteColor,
                                  ),
                                ),
                                Text(
                                  slides[index]["subheading"],
                                  style:
                                      TextThemeConstants.subTitleStyle.copyWith(
                                    fontSize: 20,
                                    color: ColorConstants.whiteColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  slides[index]["body"],
                                  style: TextThemeConstants.bodyTextStyle1
                                      .copyWith(
                                    fontSize: 15,
                                    color: ColorConstants.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(slides[index]["image"]),
                                ),
                                border: Border.all(
                                  color: ColorConstants.whiteColor,
                                  width: 10,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: ColorConstants.blackColor
                                        .withOpacity(0.2),
                                    blurRadius: 5,
                                    spreadRadius: 0.2,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              slides.length,
              (index) => buildDot(index, context),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? ColorConstants.orangeColor
            : ColorConstants.greyColor,
      ),
    );
  }
}
