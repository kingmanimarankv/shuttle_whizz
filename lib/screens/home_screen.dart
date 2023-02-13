import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking_court.dart';
import 'package:shuttle_whizz/screens/widgets/hero_section.dart';
import 'package:shuttle_whizz/screens/widgets/help_section.dart';

import 'package:shuttle_whizz/screens/widgets/play_it_forward_section.dart';
import 'package:shuttle_whizz/screens/widgets/preference_section.dart';
import 'package:shuttle_whizz/screens/widgets/discount_section.dart';

import '../common/theme/color_constants.dart';

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
