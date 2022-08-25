import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lavie/Constants/Colors.dart';
import 'package:lavie/Views/CustomBottomBar.dart';

import '../Constants/CustomWidgets/CustomButton.dart';
import '../Constants/CustomWidgets/CustomTextField.dart';
import '../Controllers/AuthentcationController.dart';

class LoginScreen extends GetWidget <AuthentcationController>  {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;
  bool isnVisible = false;
  bool remembered=false;
  RxBool keepMeLoggedIn = false.obs ;
  final userdata = GetStorage();
  LoginPage()
  {
    final userdata = GetStorage();
    userdata.writeIfNull('isRemembered', false);
    if(userdata.read('isRemembered')==true)
    {
      Future.delayed(const Duration(milliseconds: 1000),() async{
        remembered=AuthentcationController().checkIfRemembered();
        if(remembered==true)
        {
           Obx(()=> emailController.text=userdata.read('username')).toString();
           Obx(()=>passwordController.text=userdata.read('userpassword'));
        }
      });
    }
  }
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
            children:[
              Text(
                "Email",
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
              const SizedBox(height: 40),
              CustomButton(inputText: "Login", height: 46,width: 337,
                  onPressed: () {
                    Get.offAll(CustomBottomBar());
                  }
              ),
            ]
        ),
      ),
    );
  }

}