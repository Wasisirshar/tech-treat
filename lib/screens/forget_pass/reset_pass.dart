import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';

import '../Login/login_utils.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Color(0xffFF9C06),
              size: 14,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              "back",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xffFF9C06),
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('asset/onboarding.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  'Reset Password',
                  style: GoogleFonts.workSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF9C06),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const LoginInput(
                text: 'New Password',
                icon: Icon(Icons.password_rounded),
              ),
              const SizedBox(
                height: 25,
              ),
              LoginInput(
                text: 'Confrim Password',
                icon: Icon(Icons.password_rounded),
              ),
              const SizedBox(
                height: 50,
              ),
              OnBoardingBtn(
                  text: 'Continue',
                  onpressed: () {},
                  btncolor: Color(0xffFF9C06),
                  textcolor: Colors.white)
            ],
          )),
    );
  }
}
