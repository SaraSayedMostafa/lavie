import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:lavie/Constants/Colors.dart';


class Background extends GetWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colors().white,
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top:0,
              right: 0,
              child: Image.asset(
                "assets/images/leavesup.png",
              ),
            ),
            Positioned(
              top:size.height*0.2,
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 102,
              ),
            ),
            Positioned(
              bottom:0,
              left: 0,
              child: Image.asset(
                "assets/images/leavesdown.png",
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }

}