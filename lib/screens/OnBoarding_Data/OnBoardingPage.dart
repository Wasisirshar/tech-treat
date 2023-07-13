import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techtreats_mm/screens/Login/login_page.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_btn.dart';
import 'package:techtreats_mm/screens/OnBoarding_Data/onboarding_util.dart';
import 'package:techtreats_mm/screens/signup/sign_up.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: controller,
              children: const [
                OnBoardingUtil(
                    text: "Live Mentorship",
                    paraText:
                        "The app provides a platform for experienced individuals to connect with and mentor younger generations. Users can offer guidance, advice, and share their expertise through discussions."),
                OnBoardingUtil(
                    text: "Instant Cash Rewards",
                    paraText:
                        " Users can earn passive income by engaging in short discussions with young individuals. The app rewards them with instant cash for sharing their knowledge, insights, and experiences."),
                OnBoardingUtil(
                    text: "Empowering the Next Generation",
                    paraText:
                        "It provides a space for meaningful conversations, where young individuals can learn from the wisdom and expertise of their mentors while mentors can make a positive impact and earn passive income simultaneously.")
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 256.07,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Color(0xffFF9C06),
                    dotColor: Colors.grey,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 175.07,
              left: 47,
              right: 47,
              child: OnBoardingBtn(
                textcolor: Colors.white,
                text: 'Login',
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(_) => LoginPage(),),);
                },
                btncolor: Color(0xffFF9C06),
              ),
            ),
            Positioned(
              bottom: 111.7,
              left: 47,
              right: 47,
              child: OnBoardingBtn(
                textcolor: Color(0xffFF9C06),
                text: 'Sign up',
                onpressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(_) => SignUpPage(),),);
                },
                btncolor: Color(0xffffffff),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
