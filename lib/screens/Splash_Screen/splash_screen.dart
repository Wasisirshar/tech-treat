import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../OnBoarding_Data/OnBoardingPage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(decoration: const BoxDecoration(
            image: DecorationImage(image:AssetImage('asset/logo1.png'))
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("heyyyyyyyyyyyyyy"),
                Image.asset(
                  "asset/logo.png",
                  // height: double.infinity,
                  // fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Unlock Earnings By Mentoring',style: GoogleFonts.roboto(fontWeight: FontWeight.w500,fontSize: 12,color: const Color(0xff2C2C2C)),textAlign: TextAlign.center,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
