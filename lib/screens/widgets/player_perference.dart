import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/image_constants.dart';
import '../../constants/string_constants.dart';

class PlayerPreference extends StatelessWidget {
  PlayerPreference({super.key});
  final Map<String,String> content ={
    StringConstants.playerRow1:StringConstants.playerRow11,
    StringConstants.playerRow2:StringConstants.playerRow22,
    StringConstants.playerRow3:StringConstants.playerRow33,
    StringConstants.playerRow4:StringConstants.playerRow44,
  }; 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 359,
      child: Column(
        children: [
          Text(StringConstants.playerPreference,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w900,
                fontSize:50,
              )),
              const SizedBox(height:56),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: content.entries.map((e)=>Container(
              margin:const EdgeInsets.symmetric(horizontal: 24.5),
              width:165,
              child: Expanded(
                  child: Column(
                    children:  [
                       const Image(
                        image: AssetImage(ImageConstants.iconPlayer),
                      ),
                      const SizedBox(height: 13.57,),
                       Text(e.key,style: GoogleFonts.lato(fontWeight:FontWeight.w700,fontSize:20),),
                       const SizedBox(height:6),
                       Text(
                        e.value,style: GoogleFonts.lato(fontWeight:FontWeight.w300,fontSize: 10,height:1.3),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            ) ).toList()
            
            
            
              
             
             
            
          )
        ],
      ),
    );
  }
}
