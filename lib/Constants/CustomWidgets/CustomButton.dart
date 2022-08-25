
import 'package:flutter/material.dart';
import 'package:lavie/Constants/Colors.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final double height;
  final double width;
  final VoidCallback onPressed;
  const CustomButton({required this.inputText, required this.height,required this.onPressed, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colors().primary ,
      ),
      child: MaterialButton(
        onPressed:onPressed,
        child: Text(
          inputText,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}