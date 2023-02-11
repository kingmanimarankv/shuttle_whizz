import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';


class PlayerPreference extends StatelessWidget {
  const PlayerPreference({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      height:359,
      child:Column(
        children:[
          Text(StringConstants.playerPreference,style:GoogleFonts.poppins(fontWeight:FontWeight.w900,)),
          Row(
            children: [
              Column(
                children:[
                  Image(
              height: 300,
              image: AssetImage(ImageConstants.iconPlayer),
              
            ),
            Text(StringConstants.playerRow1),
            Text(StringConstants.playerRow11),
                ],
              )
            ],
          )   
          ],
          
      ),

    );
  }
}
