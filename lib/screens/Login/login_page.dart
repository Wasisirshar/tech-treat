import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/Login/login_utils.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';
import 'package:techtreats_mm/screens/forget_pass/forget_password.dart';
import 'package:techtreats_mm/screens/signup/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 111),
                child: Text(
                  'Login',
                  style: GoogleFonts.workSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF9C06),
                  ),
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              const LoginInput(icon: Icon(Icons.numbers), text: 'Contact'),
              const SizedBox(
                height: 25,
              ),
              const LoginInput(icon: Icon(Icons.password), text: 'Password'),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder:(_) => ForgetPass(),),);
                  },
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0000FF),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              OnBoardingBtn(
                  text: "Login",
                  onpressed: () {},
                  btncolor: const Color(0xffFF9C06),
                  textcolor: Colors.white),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 58),
                child: Row(
                  children: [
                    const Text(
                      'New to Account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        color: Color(0xff262626),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const SignUpPage()));
                      },
                      child: Text('Sign Up',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            color: const Color(0xff0000FF),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
