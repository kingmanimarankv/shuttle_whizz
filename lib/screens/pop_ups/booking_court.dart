import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class BookingCourt extends StatelessWidget {
  const BookingCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: ColorConstants.whiteColor,
        width: 617,
        height: 709,
        child: Column(
          children: const [
            Image(
              image: AssetImage(ImageConstants.badmintonGirls),
            ),
            SizedBox(
              height: 18,
            ),
            Text(StringConstants.courtName),
            
            Text(StringConstants.courtLocation),
            SizedBox()
            
          ],
        ),
      ),
    );
  }
}
