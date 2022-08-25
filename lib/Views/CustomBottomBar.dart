import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lavie/Constants/Colors.dart';
import 'package:lavie/Views/CommunityScreen.dart';
import 'package:lavie/Views/HomeScreen.dart';
import 'package:lavie/Views/NotificationScreen.dart';
import 'package:lavie/Views/ProfileScreen.dart';
import 'package:lavie/Views/QRCodeScannerScreen.dart';

class CustomBottomBar extends GetWidget {
  @override
  Widget build(BuildContext context) {
    late List<Widget> screens = [
      CommunityScreen(),
      QRCodeScannerScreen(),
      HomeScreen(),
      NotificationScreen(),
      ProfileScreen(),
    ];
    RxInt currentIndex = 0.obs;
    return Scaffold(
      backgroundColor: colors().white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          currentIndex.value = 2;
        },
        backgroundColor: colors().primary,
        child: SvgPicture.asset(
          'assets/icons/homeicon.svg',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Obx (()=>screens[currentIndex.value]),
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: colors().black.withOpacity(0.07),
                blurRadius: 15.0,
                offset: const Offset(0.0, 0.75)
            )
          ],
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          color: colors().white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                     onPressed: (){
                       currentIndex.value = 0;
                     },
                     child: SvgPicture.asset(
                      'assets/icons/communityicon.svg',
                     ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      currentIndex.value = 1;
                    },
                    child: SvgPicture.asset(
                      'assets/icons/qrcodescanicon.svg',
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: (){
                      currentIndex.value = 3;
                    },
                    child: SvgPicture.asset(
                      'assets/icons/notificationicon.svg',
                    ),
                  ),
                  MaterialButton(
                    onPressed: (){
                      currentIndex.value = 4;
                    },
                    child: SvgPicture.asset(
                      'assets/icons/profileicon.svg',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }


}