import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../theme/color_constants.dart';
import '../theme/text_theme.dart';

class RegisterField extends StatelessWidget {
  final String hintText;

  const RegisterField({
    required this.hintText,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        cursorColor: ColorConstants.violetColor,
        style: TextThemeConstants.bodyTextStyle1.copyWith(
          color: ColorConstants.violetColor,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintStyle: TextThemeConstants.bodyTextStyle1
              .copyWith(color: ColorConstants.violetColor),
          hintText: hintText,
          fillColor: ColorConstants.whiteColor,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
                color: ColorConstants.lightSilver,
                width: 0.5,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
