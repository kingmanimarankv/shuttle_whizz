import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/widgets/button.dart';
import 'package:shuttle_whizz/constants/image_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

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
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w900,
                    fontSize: 45,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  StringConstants.heroSectionSubText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Button(),
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
