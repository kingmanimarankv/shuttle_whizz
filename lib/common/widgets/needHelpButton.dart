import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';
import 'package:shuttle_whizz/constants/string_constants.dart';

class NeedHelpButton extends StatelessWidget {
  const NeedHelpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 250,
      decoration: BoxDecoration(
        color: ColorConstants.needHelpColor,
        borderRadius: BorderRadius.circular(50),
        border:Border.all(color:ColorConstants.whiteColor),
      ),
      child: Center(
        child: Text(
          StringConstants.needHelpButtonText.toUpperCase(),
          style: GoogleFonts.lato(
            color:ColorConstants.whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
