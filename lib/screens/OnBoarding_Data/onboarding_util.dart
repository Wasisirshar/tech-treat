import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';

class OnBoardingUtil extends StatelessWidget {
  final String text, paraText;

  const OnBoardingUtil({Key? key, required this.text, required this.paraText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(
            "asset/onboarding.png",
            width: 188,
            height: 175,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          text,
          style: GoogleFonts.workSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xffFF9C06)),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 38, right: 50),
          child: Text(
            paraText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff2C2C2C),
            ),
          ),
        ),
      ],
    );
  }
}
