import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OutBoardingContent extends StatelessWidget {

  late String image , title , desc;


  OutBoardingContent({
   required this.image,
   required this.title,
   required this.desc
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(image , width: double.infinity,height: 250,),
        SizedBox(height: 20,),
        Text(
          title,
          style: TextStyle(
            fontSize: 40,

          ),

        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
          desc,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16
            ),
          ),
        ),

      ],
    );
  }
}
