import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 250,
        decoration: BoxDecoration(
          color: ColorConstants.orangeColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            StringConstants.bookNow.toUpperCase(),
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
