import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class BookingCourt extends StatelessWidget {
  BookingCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: ColorConstants.whiteColor,
        width: 617,
        height: 709,
        child: Column(
          children: [
            Image(
              image: AssetImage(ImageConstants.badmintonGirls),
            ),
            SizedBox(
              height: 18,
            ),
            Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(StringConstants.courtName),
                Text(StringConstants.courtLocation),
                Container(
                    child: Column(
                  children: [
                    Text(StringConstants.courtDescriptionTitle),
                    Text(StringConstants.courtDescription),
                  ],
                )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
