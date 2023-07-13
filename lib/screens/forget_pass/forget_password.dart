import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/Login/login_utils.dart';
import 'package:techtreats_mm/screens/opt_auth_page/auth.dart';
import '../OnBoarding_Data/onboarding_btn.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0XFFff9c06),
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
                'Forget Password',
                style: GoogleFonts.workSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFF9C06),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const LoginInput(
              text: 'Email/Phone',
              icon: Icon(Icons.restart_alt),
            ),
            const SizedBox(
              height: 50,
            ),
            OnBoardingBtn(
                text: 'Continue',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpAuth(),
                    ),
                  );
                  },
                btncolor: const Color(0xffFF9C06),
                textcolor: Colors.white)
          ],
        ),
      ),
    );
  }
}
