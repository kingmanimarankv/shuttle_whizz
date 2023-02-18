import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/account.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking.dart';
import 'package:shuttle_whizz/screens/pop_ups/login.dart';
import 'package:shuttle_whizz/screens/pop_ups/successful_booking.dart';
import 'package:shuttle_whizz/screens/widgets/nav_bar_section.dart';

import 'widgets/help_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/play_it_forward_section.dart';
import 'widgets/preference_section.dart';
import 'package:shuttle_whizz/screens/widgets/member_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NavBarSection(),
            const HeroSection(),
            PlayItForwardSection(),
            PreferenceSection(),
            MembershipSection(),
            const HelpSection(),
            Login(),
            Account(),
            Booking(),
            SuccessfulBooking(),
          ],
        ),
      ),
    );
  }
}
