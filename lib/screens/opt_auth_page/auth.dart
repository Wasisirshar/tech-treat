import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';
import 'package:techtreats_mm/screens/forget_pass/reset_pass.dart';
import 'package:techtreats_mm/screens/opt_auth_page/opt_input.dart';

class OtpAuth extends StatefulWidget {
  const OtpAuth({Key? key}) : super(key: key);

  @override
  State<OtpAuth> createState() => _OtpAuthState();
}

class _OtpAuthState extends State<OtpAuth> {
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
            Expanded(
              child: Center(
                child: Image.asset('asset/onboarding.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                'OPT Authentication',
                style: GoogleFonts.workSans(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffFF9C06),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42),
              child: Text(
                'Enter 4-digit code send to +9234*******789',
                style: GoogleFonts.roboto(
                  color: const Color(0xff181818),
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OtpInputFields(),
                OtpInputFields(),
                OtpInputFields(),
                OtpInputFields(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 270, top: 49),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Resend',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFF9C06),
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(
              height: 49,
            ),
            OnBoardingBtn(
                text: 'Verify',
                onpressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPassword(),
                    ),
                  );
                },
                btncolor: const Color(0xffFF9C06),
                textcolor: Colors.white),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
