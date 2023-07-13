import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techtreats_mm/screens/Login/login_page.dart';
import 'package:techtreats_mm/screens/Login/login_utils.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 111),
                  child: Text(
                    'Signup',
                    style: GoogleFonts.workSans(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFF9C06),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                const LoginInput(
                    icon: Icon(Icons.drive_file_rename_outline),
                    text: 'Full Name'),
                const SizedBox(
                  height: 23,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 240),
                  child: Text(
                    'Age Range',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: const Color(0xff181818),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: RadioListTile(
                      value: 1,
                      groupValue: 2,
                      onChanged: null,
                      activeColor: Color(0xff181818),
                      title: Text(
                        '16-25',
                        style: TextStyle(
                          color: Color(0xff181818),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: RadioListTile(
                      value: 2,
                      groupValue: 2,
                      onChanged: null,
                      title: Text(
                        '26-32',
                        style: TextStyle(
                          color: Color(0xff181818),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: RadioListTile(
                      value: 3,
                      groupValue: 2,
                      onChanged: null,
                      title: Text(
                        '33-40',
                        style: TextStyle(
                          color: Color(0xff181818),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: RadioListTile(
                      value: 4,
                      groupValue: 2,
                      onChanged: null,
                      title: Text(
                        'Above',
                        style: TextStyle(
                          color: Color(0xff181818),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 29,
                ),
                const LoginInput(icon: Icon(null), text: 'Select Designation'),
                const SizedBox(
                  height: 25,
                ),
                const LoginInput(icon: Icon(Icons.numbers), text: 'Contact'),
                const SizedBox(
                  height: 25,
                ),
                const LoginInput(icon: Icon(Icons.email), text: 'Email'),
                const SizedBox(
                  height: 25,
                ),
                const LoginInput(icon: Icon(Icons.password), text: 'Password'),
                const SizedBox(
                  height: 30,
                ),
                OnBoardingBtn(
                    text: 'Signup',
                    onpressed: () {},
                    btncolor: const Color(0xffFF9C06),
                    textcolor: Colors.white),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Row(
                    children: [
                      const Text(
                        'Already have an account?',
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
                              MaterialPageRoute(builder: (_) => const LoginPage()));
                        },
                        child: Text('Login in',
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
      ),
    );
  }
}
