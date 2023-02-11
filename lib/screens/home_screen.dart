import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/widgets/hero_section.dart';
import 'package:shuttle_whizz/screens/widgets/player_perference.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const HeroSection(),
            PlayerPreference(),
          ],
        ),
      ),
    );
  }
}
