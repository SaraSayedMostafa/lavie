import 'package:get/get.dart';

import '../Controllers/AuthentcationController.dart';

class AuthenticationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthentcationController>(() => AuthentcationController());
  }
}