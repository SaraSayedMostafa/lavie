import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lavie/Constants/Colors.dart';
import 'package:lavie/Constants/CustomWidgets/Background.dart';
import 'package:lavie/Constants/CustomWidgets/CustomTabBar.dart';
import 'package:lavie/Views/LoginScreen.dart';
import 'SignupScreen.dart';

class ControllingLoginSignupScreens extends GetWidget {
  @override
  Widget build(BuildContext context) {
    final CustomTabBar _tabs=Get.put(CustomTabBar());
    return Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.center,
              child: TabBar(
                  controller: _tabs.tabController ,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 50,right: 50),
                  labelStyle:  const TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  labelColor: colors().primary,
                  unselectedLabelColor: colors().border,
                  unselectedLabelStyle: const TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: colors().primary,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: _tabs.myTabs
              ),
            ),
            Container(
                width:double.maxFinite,
                height: 300,
                child: TabBarView(
                  controller: _tabs.tabController ,
                  children: [
                    SignupScreen(),
                    LoginScreen(),
                  ],
                )
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: colors().border,
                    height: 1.5,
                    indent: 45,
                    endIndent: 5,
                  ),
                ),
                Text(
                  "or continue with",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: colors().border,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: colors().border,
                    indent: 5,
                    endIndent: 45,
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginScreen()),
                    );
                  },
                  highlightColor:colors().primary,
                  child: SvgPicture.asset(
                          'assets/icons/googleicon.svg',
                        ),
                ),
                const SizedBox(width: 26),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  LoginScreen()),
                    );
                  },
                  highlightColor:colors().primary,
                  radius: 15,
                  child: SvgPicture.asset(
                      'assets/icons/facebookicon.svg',
                    ),
                ),

              ],
            ),
          ],
        ),
    );
  }

}