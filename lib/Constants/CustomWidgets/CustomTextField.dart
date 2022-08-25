import 'package:flutter/material.dart';

import '../Colors.dart';

class CustomTextField extends StatelessWidget {
  final double height;
  final double width;
  final  TextEditingController controller;
  final bool check;
  const CustomTextField({required this.height,required this.controller,required this.check, required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        controller:controller,
        obscureText: check,
        decoration: InputDecoration(
            focusColor: colors().primary,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1 , color: colors().border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1 , color: colors().border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width:1, color: colors().primary),
            ),
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 2, vertical: 2),


        ),
      ),
    );
  }
}