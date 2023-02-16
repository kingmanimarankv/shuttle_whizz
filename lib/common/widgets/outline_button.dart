import 'package:flutter/material.dart';

import '../theme/text_theme.dart';

class OutlineButton extends StatelessWidget {
  final String buttonText;
  final Color borderColor;
  final Color textColor;

  const OutlineButton({
    required this.buttonText,
    required this.borderColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: borderColor,
          ),
        ),
        child: Center(
          child: Text(
            buttonText.toUpperCase(),
            style: TextThemeConstants.buttonTextStyle.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
