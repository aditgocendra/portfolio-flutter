import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/values.dart';
import '../../../core/constant/color_constant.dart';
import '../controllers/home_controller.dart';
import 'components/app_bar._custom.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        flexibleSpace: AppBarCustom(),
        toolbarHeight: 100,
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 56,
          right: 18,
        ),
        child: TabBarView(
            controller: controller.tabNavBarController,
            children: listMenu.map(
              (m) {
                return Container(
                  child: m['content'],
                );
              },
            ).toList()),
      ),
    );
  }
}
