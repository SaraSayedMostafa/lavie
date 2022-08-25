import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lavie/Binding/AuthenticationBinding.dart';
import 'package:lavie/Constants/Colors.dart';
import 'package:lavie/Views/ControllingLoginSignupScreens.dart';



void main () async
{
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(// navigation bar color
    statusBarColor: colors().white, // status bar color
  ));
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: AuthenticationBinding(),
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor:  colors().white,
          nextScreen:  ControllingLoginSignupScreens(),
          splashTransition: SplashTransition.slideTransition,
          splash: SvgPicture.asset(
           'assets/icons/logo.svg',
        ),
      ),
    );
    }

}