import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking_court.dart';

import 'widgets/help_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/play_it_forward_section.dart';
import 'widgets/preference_section.dart';
import 'package:shuttle_whizz/screens/widgets/discount_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
         
          children:  [
            // const HeroSection(),
            //  PlayItForwardSection(),
            // PreferenceSection(),
            
            // DiscountSection(),
            // const HelpSection(),
            
           BookingCourt()
          ],
        ),
      ),
    );
  }
}
