import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/widgets/button.dart';
import 'package:shuttle_whizz/constants/image_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

import '../../common/theme/text_theme.dart';
import '../pop_ups/booking_court.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Image(
              height: 300,
              image: AssetImage(ImageConstants.badmintonPlayer),
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  StringConstants.welcome,
                  style: TextThemeConstants.headingStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(StringConstants.heroSectionSubText,
                    textAlign: TextAlign.center,
                    style: TextThemeConstants.subTitleStyle),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          icon: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close),
                          ),
                          content: const CourtBooking(),
                        );
                      },
                    );
                  },
                  buttonText: StringConstants.bookNow.toUpperCase(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Transform.scale(
              scaleX: -1,
              child: const Image(
                height: 300,
                image: AssetImage(ImageConstants.badmintonPlayer),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
