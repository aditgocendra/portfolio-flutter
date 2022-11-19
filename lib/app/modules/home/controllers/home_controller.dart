import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/constant/values.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  late TabController tabNavBarController;
  late TabController tabRecentWorkController;

  // Color
  List<Map<String, dynamic>> listAnimatedProject = [];

  @override
  void onInit() {
    super.onInit();

    tabNavBarController = TabController(length: listMenu.length, vsync: this);
    tabRecentWorkController = TabController(length: 3, vsync: this);

    tabRecentWorkController.addListener(() {
      if (tabRecentWorkController.indexIsChanging) {
        listAnimatedProject.clear();
      }
    });
  }
}
