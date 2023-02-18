import "package:flutter/material.dart";

import '../theme/color_constants.dart';
import "../theme/text_theme.dart";

class BookingSlots extends StatelessWidget {
  final String content;
  final bool disabled;
  final bool selected;

  const BookingSlots({
    required this.content,
    required this.disabled,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:
            !selected ? ColorConstants.whiteColor : ColorConstants.greenColor,
        boxShadow: [
          BoxShadow(
            color: disabled
                ? ColorConstants.blackColor.withOpacity(0.2)
                : !selected
                    ? ColorConstants.orangeColor.withOpacity(0.5)
                    : ColorConstants.greenColor.withOpacity(0.5),
            blurRadius: 5,
            spreadRadius: 0.2,
          ),
        ],
      ),
      child: Text(
        content,
        style: TextThemeConstants.buttonTextStyle.copyWith(
          color: disabled ? ColorConstants.gray85 : ColorConstants.blackColor,
        ),
      ),
    );
  }
}
