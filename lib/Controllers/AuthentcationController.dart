import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lavie/Views/LoginScreen.dart';

import '../Views/HomeScreen.dart';


class AuthentcationController extends GetxController with GetSingleTickerProviderStateMixin {
  final userdata = GetStorage();



  bool checkIfRemembered() {
    if(userdata.read('isRemembered') == true)
    {
        Get.offAll(HomeScreen());
      return true;
    }
    else
    {
      Get.offAll(LoginScreen());
      return false;
    }
  }


}