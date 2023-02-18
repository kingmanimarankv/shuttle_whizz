import "package:flutter/material.dart";

import "../theme/color_constants.dart";
import "../theme/text_theme.dart";

class BookingSlots extends StatelessWidget {
  final String content;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;

    const BookingSlots({
    required this.content,
    required this.borderColor,
    required this.backgroundColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 9),
      decoration: BoxDecoration(
        border:Border.all(color: borderColor.withOpacity(0.25)),
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor,
          ),
      child: Text(
        content,
        style: TextThemeConstants.buttonTextStyle
            .copyWith(color: textColor),
      ),
    );
  }
}
