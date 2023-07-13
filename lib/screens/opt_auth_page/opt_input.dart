import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInputFields extends StatelessWidget {
  const OtpInputFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Uncomment this line
          children: [
            SizedBox(
              width: 40,
              height: 38,
              child: TextFormField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                ],
                style: TextStyle(
                  color: Color(0xff181818),
                  fontSize: 20,
                ),
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
