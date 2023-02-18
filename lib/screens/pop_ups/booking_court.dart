import 'package:flutter/material.dart';
import 'package:shuttle_whizz/screens/pop_ups/successful_booking.dart';

import '../../common/theme/color_constants.dart';
import '../../common/theme/text_theme.dart';
import '../../common/widgets/booking_slot.dart';
import '../../common/widgets/button.dart';
import '../../common/widgets/outline_button.dart';
import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class CourtBooking extends StatefulWidget {
  const CourtBooking({super.key});

  @override
  State<CourtBooking> createState() => _CourtBookingState();
}

class _CourtBookingState extends State<CourtBooking> {
  int? selectedDateIndex;
  int? selectedSlotIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      color: ColorConstants.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://5.imimg.com/data5/RI/KP/QW/SELLER-2751211/lndoor-badminton-court-flooring-1000x1000.jpeg',
                ),
              ),
            ),
            height: 250,
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.courtName,
                style: TextThemeConstants.subHeadingStyle.copyWith(
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                StringConstants.courtLocation,
                style: TextThemeConstants.bodyTextStyle1.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                StringConstants.courtDescription,
                style: TextThemeConstants.bodyTextStyle1,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                StringConstants.availableDate,
                style: TextThemeConstants.subHeadingStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 15),
              Wrap(
                children: List.generate(
                  3,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: BookingSlots(
                      content: "${23 + index} January 2023",
                      disabled: index == 1 ? true : false,
                      selected: selectedDateIndex == index,
                    ),
                  ),
                ).toList(),
              ),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: selectedDateIndex != null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.availableSlots,
                      style: TextThemeConstants.subHeadingStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedSlotIndex = index;
                            });
                          },
                          child: BookingSlots(
                            content: "${1 + index} PM - ${2 + index} PM",
                            disabled: index == 1 || index == 4 ? true : false,
                            selected: selectedSlotIndex == index,
                          ),
                        ),
                      ).toList(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Button(
                  onTap: () {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      builder: (BuildContext dialogContext) {
                        return AlertDialog(
                          icon: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.close),
                          ),
                          title: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: ColorConstants.orangeColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(ImageConstants.tickImage),
                                ),
                              ),
                              Text(
                                StringConstants.congratulations,
                                style: TextThemeConstants.headingStyle,
                              ),
                              Text(
                                StringConstants.bookingConfirmation,
                                style:
                                    TextThemeConstants.bodyTextStyle1.copyWith(
                                  color: ColorConstants.violetColor,
                                  height: 1.2,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          content: const SuccessfulBooking(),
                        );
                      },
                    );
                  },
                  buttonText: StringConstants.bookNow,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
