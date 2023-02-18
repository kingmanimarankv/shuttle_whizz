import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';

class Button extends StatelessWidget {
  const Button({
    required this.buttonText,
    this.buttonColor = ColorConstants.orangeColor,
    this.image,
    this.onTap,
    super.key,
  });

  final String buttonText;
  final Color buttonColor;
  final String? image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 250,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (image != null)
                ? Image.asset(
                    image!,
                    width: 17,
                    height: 18,
                  )
                : const SizedBox(),
            const SizedBox(width: 10),
            Text(
              buttonText.toUpperCase(),
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: ColorConstants.violetColor),
            ),
          ],
        ),
      ),
    );
  }
}
