import 'package:flutter/material.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../constants/image_constants.dart';

class Bookings extends StatelessWidget {
  const Bookings({super.key});

  @override
  Widget build(BuildContext context) {
    final List bookingDetails = [
      {
        "booking_date": "25 January 2023, Thursday",
        "booking_time": "11 PM - 12 PM",
        "location": "Court-1, Ontario LMVW2567",
        "booking_status": "Cancel Booking",
        "booking_color": ColorConstants.redColor,
      },
      {
        "booking_date": "25 January 2023, Thursday",
        "booking_time": "11 PM - 12 PM",
        "location": "Court-1, Ontario LMVW2567",
        "booking_status": "Cancelled",
        "booking_color": ColorConstants.darkGray,
      },
      {
        "booking_date": "25 January 2023, Thursday",
        "booking_time": "11 PM - 12 PM",
        "location": "Court-1, Ontario LMVW2567",
        "booking_status": "Closed",
        "booking_color": ColorConstants.darkGreen,
      },
    ];

    return Container(
      width: 700,
      decoration: BoxDecoration(
        color: ColorConstants.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: bookingDetails.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstants.blackColor.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 0.2,
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            repeat: ImageRepeat.repeatY,
                            opacity: 0.2,
                            colorFilter: ColorFilter.mode(
                              ColorConstants.whiteColor,
                              BlendMode.color,
                            ),
                            image: AssetImage(
                              ImageConstants.pattern,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.calenderImage,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  bookingDetails[index]["booking_date"],
                                  style: TextThemeConstants.bodyTextStyle1
                                      .copyWith(
                                    fontSize: 12,
                                    color: ColorConstants.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.clockImage,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  bookingDetails[index]["booking_time"],
                                  style: TextThemeConstants.bodyTextStyle1
                                      .copyWith(
                                    fontSize: 12,
                                    color: ColorConstants.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.locationImage,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  bookingDetails[index]["location"],
                                  style: TextThemeConstants.bodyTextStyle1
                                      .copyWith(
                                    fontSize: 12,
                                    color: ColorConstants.blackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                                thickness: 1, color: ColorConstants.gainsboro),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              bookingDetails[index]["booking_status"],
                              style: TextThemeConstants.bodyTextStyle1.copyWith(
                                  color: bookingDetails[index]
                                      ["booking_color"]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
