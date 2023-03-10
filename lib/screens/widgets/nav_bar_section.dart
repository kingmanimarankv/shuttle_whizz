import 'package:flutter/material.dart';
import 'package:shuttle_whizz/common/theme/color_constants.dart';
import 'package:shuttle_whizz/screens/pop_ups/booking.dart';
import 'package:shuttle_whizz/screens/pop_ups/login.dart';

import '../../common/theme/text_theme.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.violetColor,
      padding: const EdgeInsets.all(20).copyWith(left: 50, right: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                  image: AssetImage(
                    ImageConstants.shuttleWhizIcon,
                  ),
                  height: 80,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.shuttleWhizzClub,
                      style: TextThemeConstants.headingStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: ColorConstants.whiteColor,
                      ),
                    ),
                    Text(
                      StringConstants.clubAddress,
                      style: TextThemeConstants.bodyTextStyle1.copyWith(
                        fontSize: 12,
                        color: ColorConstants.whiteColor,
                      ),
                    ),
                  ],
                ),
                Expanded(flex: 1, child: Container()),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
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
                                  StringConstants.bookings,
                                  style: TextThemeConstants.headingStyle,
                                ),
                                content: const Bookings(),
                              );
                            },
                          );
                        },
                        child: Text(
                          StringConstants.bookings,
                          style: TextThemeConstants.bodyTextStyle1.copyWith(
                            fontSize: 15,
                            color: ColorConstants.whiteColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
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
                                title: Column(
                                  children: [
                                    Text(
                                      StringConstants.loginWelcome,
                                      style: TextThemeConstants.headingStyle,
                                    ),
                                    Text(
                                      StringConstants.requestCredentials,
                                      style: TextThemeConstants.bodyTextStyle1
                                          .copyWith(
                                        color: ColorConstants.violetColor,
                                        height: 1.2,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                content: const Login(),
                              );
                            },
                          );
                        },
                        child: Text(
                          StringConstants.account,
                          style: TextThemeConstants.bodyTextStyle1.copyWith(
                            fontSize: 15,
                            color: ColorConstants.whiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
