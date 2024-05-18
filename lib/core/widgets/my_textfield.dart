// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {super.key,
      required this.title,
      this.hint = '',
      this.suffix,
      required this.controller,
      this.prefix,
      this.type});
  String title;
  String hint;
  Widget? suffix;
  Widget? prefix;
  TextEditingController controller = TextEditingController();
  TextInputType? type;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        TextFormField(
          controller: controller,
          keyboardType: type,
          style: TextStyle(
            fontSize: 14,
          ),
          decoration: InputDecoration(
              hintText: hint,
              suffixIcon: suffix,
              prefix: prefix,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        ),
      ],
    );
  }
}
