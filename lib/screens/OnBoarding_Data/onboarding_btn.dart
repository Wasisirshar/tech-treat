import 'package:flutter/material.dart';

class OnBoardingBtn extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final Color btncolor;
  final Color textcolor;

  const OnBoardingBtn(
      {Key? key, required this.text, required this.onpressed, required this.btncolor, required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: btncolor,
        minimumSize: const Size(330, 42),
        shape: const StadiumBorder(
          side: BorderSide(
              color:Color(0xffFF9C06),
          ),
        ),
      ),
      child: Text(text,style: TextStyle(
        color: textcolor,
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),),
    );
  }
}
