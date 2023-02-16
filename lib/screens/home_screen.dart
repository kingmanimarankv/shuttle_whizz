import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';
import 'package:shuttle_whizz/common/theme/text_theme.dart';
import 'package:shuttle_whizz/constants/image_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';
import 'package:shuttle_whizz/screens/widgets/nav_bar_section.dart';

import 'widgets/help_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/play_it_forward_section.dart';
import 'widgets/preference_section.dart';

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
            const HelpSection(),
          ],
        ),
      ),
    );
  }
}
