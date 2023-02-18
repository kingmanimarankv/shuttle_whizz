import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/account.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                style: TextThemeConstants.bodyTextStyle1.copyWith(
                  color: ColorConstants.violetColor,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintStyle: TextThemeConstants.bodyTextStyle1
                      .copyWith(color: ColorConstants.violetColor),
                  hintText: StringConstants.loginMenberID,
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
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 300,
              child: TextField(
                  style: TextThemeConstants.bodyTextStyle1.copyWith(
                    color: ColorConstants.violetColor,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    hintStyle: TextThemeConstants.bodyTextStyle1
                        .copyWith(color: ColorConstants.violetColor),
                    hintText: StringConstants.loginPassword,
                    fillColor: ColorConstants.whiteColor,
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: ColorConstants.lightSilver,
                          width: 0.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            Button(
              buttonText: "Submit",
              onTap: () {
                Navigator.of(context).pop();
                showDialog(
                  context: context,
                  builder: (BuildContext dialogContext) {
                    return AlertDialog(
                      icon: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                      title: Text(
                        StringConstants.accountProfile,
                        style: TextThemeConstants.loginWelcome,
                      ),
                      content: Account(),
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "or",
              style: TextThemeConstants.bodyTextStyle1,
            ),
            const SizedBox(
              height: 20,
            ),
            const Button(
                buttonText: "Sign in with Google",
                image: ImageConstants.googleImage,
                buttonColor: ColorConstants.aliceBlueColor),
          ],
        ),
      ),
    );
  }
}
