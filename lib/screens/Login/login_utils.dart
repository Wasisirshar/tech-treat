import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final Icon icon;
  final String text;


  const LoginInput({Key? key, required this.icon, required this.text}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45,right: 45),
      child: SizedBox(
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
            prefixIcon: icon,
            label: Text(text),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
