import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/register_field.dart';
import '../../constants/string_constants.dart';

class MembershipRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(children: [
          Text(
            StringConstants.membershipRegistration,
            style: TextThemeConstants.loginWelcome,
          ),
           SizedBox(height: 13,),
          Text(StringConstants.membershipRegistrationSubtitle,
              style: TextThemeConstants.bodyTextStyle1.copyWith(fontSize: 15)),
              SizedBox(height: 13,),
              RegisterField(hintText: "First Name",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Last Name",),
             SizedBox(height: 13,), 
              RegisterField(hintText: "Email",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Phone",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Date of Birth",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Emergency Contact Name",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Emergency Contact Phone",),
              SizedBox(height: 13,),
              RegisterField(hintText: "Address",),
              SizedBox(height: 13,),
              Button(buttonText: "Submit",),










        ]),
      ),
    );
  }
}
