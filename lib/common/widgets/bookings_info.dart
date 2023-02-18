import "package:flutter/material.dart";
import "package:shuttle_whizz/common/theme/color_constants.dart";

import "../../constants/image_constants.dart";
import "../theme/text_theme.dart";

class BookingInfo extends StatelessWidget {
  final List bookingDetails = [
    {
      "booking_date": "25 January 2023,Thursday",
      "booking_time": "11 PM - 12 PM",
      "location": "Court-1,Ontario LMVW2567",
      "booking_status": "Cancel Booking",
      "booking_color": ColorConstants.redColor,
    },
    {
      "booking_date": "25 January 2023,Thursday",
      "booking_time": "11 PM - 12 PM",
      "location": "Court-1,Ontario LMVW2567",
      "booking_status": "Cancelled",
      "booking_color": ColorConstants.darkGray,
    },
    {
      "booking_date": "25 January 2023,Thursday",
      "booking_time": "11 PM - 12 PM",
      "location": "Court-1,Ontario LMVW2567",
      "booking_status": "Closed",
      "booking_color": ColorConstants.darkGreen,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 231,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: bookingDetails.length,
            //scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      width: 324,
                      height: 73,
                      decoration: BoxDecoration(
                        color: ColorConstants.darkSalmon,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        // boxShadow: [BoxShadow(color: ColorConstants.whiteColor,spreadRadius:0.25 ),]
                      ),
                    ),
                    Container(
                        width: 324,
                        height: 231,
                        padding: EdgeInsets.only(top: 11, left: 9),
                        decoration: BoxDecoration(
                          color: ColorConstants.whiteColor.withOpacity(0.25),
                          //boxShadow: [BoxShadow(color: ColorConstants.whiteColor,spreadRadius:0.25 ),],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.calenderImage,
                                ),
                                SizedBox(width: 12),
                                Text(bookingDetails[index]["booking_date"]),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.clockImage,
                                ),
                                SizedBox(width: 12),
                                Text(bookingDetails[index]["booking_time"]),
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  ImageConstants.locationImage,
                                ),
                                SizedBox(width: 12),
                                Text(bookingDetails[index]["location"]),
                              ],
                            ),
                            Divider(
                                thickness: 1, color: ColorConstants.gainsboro),
                            SizedBox(height: 16.5),
                            Text(
                              bookingDetails[index]["booking_status"],
                              style: TextThemeConstants.bodyTextStyle1.copyWith(
                                  color: bookingDetails[index]
                                      ["booking_color"]),
                            ),
                          ],
                        ))
                  ],
                )),
      ),
    );
  }
}
