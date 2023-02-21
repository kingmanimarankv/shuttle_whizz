import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/account.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking.dart';
import 'package:shuttle_whizz/screens/pop_ups/login.dart';
import 'package:shuttle_whizz/screens/pop_ups/successful_booking.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';
import 'package:shuttle_whizz/screens/widgets/nav_bar_section.dart';
import 'package:shuttle_whizz/screens/widgets/slider_section.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking_court.dart';

import 'pop_ups/membership_registration.dart';
import 'widgets/help_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/play_it_forward_section.dart';
import 'widgets/preference_section.dart';
import 'package:shuttle_whizz/screens/widgets/membership_section.dart';
import 'package:shuttle_whizz/screens/widgets/discount_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const NavBarSection(),
            // const HeroSection(),
            // PlayItForwardSection(),
            // PreferenceSection(),
            // const SliderSection(),
            // MembershipSection(),
            // const HelpSection(),
             MembershipRegistration(),
            Container(
              width: double.infinity,
              color: ColorConstants.violetColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "v1.0.0",
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorConstants.whiteColor.withOpacity(0.5),
                    ),
                  ),
                  Text(
                    "Robolabs India",
                    style: TextStyle(
                      fontSize: 10,
                      color: ColorConstants.whiteColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
