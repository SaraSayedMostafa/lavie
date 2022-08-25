import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';

import '../Constants/Colors.dart';
import '../Constants/CustomWidgets/CustomButton.dart';
import '../Constants/CustomWidgets/CustomTextField.dart';
import '../Controllers/AuthentcationController.dart';

class SignupScreen extends GetWidget <AuthentcationController>  {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;
  bool isnVisible = false;
  bool remembered=false;
  RxBool keepMeLoggedIn = false.obs ;
  final userdata = GetStorage();
  @override
  Widget build(BuildContext context) {
    remembered? emailController.text=userdata.read('username').toString() : emailController.text='';
    remembered? passwordController.text=userdata.read('userpassword') : passwordController.text='';
    remembered? keepMeLoggedIn=RxBool(true) :keepMeLoggedIn=RxBool(false);
    return Scaffold(
      backgroundColor: colors().white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    "First Name",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: colors().border,
                    ),
                  ),
                  const SizedBox(width: 113),
                  Text(
                    "Last Name",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: colors().border,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  CustomTextField(height: 46, controller: emailController, check: false, width: 160,),
                  const SizedBox(width: 13.5),
                  CustomTextField(height: 46, controller: emailController, check: false, width: 160,),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                "E-mail",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: colors().border,
                ),
              ),
              const SizedBox(height: 4),
              CustomTextField(height: 46, controller: emailController, check: false, width: 337,),
              const SizedBox(height: 30),
              Text(
                "Password",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: colors().border,
                ),
              ),
              const SizedBox(height: 4),
              CustomTextField(height: 46, controller: passwordController, check: true, width: 337,),
              const SizedBox(height: 30),
              Text(
                "Confirm Password",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: colors().border,
                ),
              ),
              const SizedBox(height: 4),
              CustomTextField(height: 46, controller: passwordController, check: true, width: 337,),
              const SizedBox(height: 40),
              CustomButton(inputText: "Signup", height: 46,width: 337,
                  onPressed: () {
                  }
              ),
            ]
        ),
      ),
    );
  }
  
}