import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CustomTabBar extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: 'Sign up',
    ),
    const Tab(
      text: 'Login',
    ),
  ];
  @override
  void onInit() {
    tabController=TabController(length: 2,vsync: this);
  }
  @override
  void onClose() {
    tabController.dispose();
  }

}