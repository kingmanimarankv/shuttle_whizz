import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/bookings_info.dart';
import '../../constants/string_constants.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 617,
      height: 832,
      decoration: BoxDecoration(color: ColorConstants.whiteColor, 
      borderRadius:BorderRadius.circular(30),
  ),
        child:Column(children: [
        Text(StringConstants.bookings,style: TextThemeConstants.loginWelcome),
        SizedBox(height: 27,),
        BookingInfo(),
      ],)
    );
  }
}
