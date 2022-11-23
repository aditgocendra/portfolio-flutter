import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/components/sidebar_popup.dart';
import '../../../core/constant/values.dart';
import '../../../core/constant/color_constant.dart';
import '../controllers/home_controller.dart';
import 'components/app_bar_custom.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        flexibleSpace: AppBarCustom(),
        toolbarHeight: 100,
      ),
      drawer: SidebarPopup(),
      body: Container(
        padding: EdgeInsets.only(
          // left: 56,
          // right: 18,
          left: sizeScreenWidth > 1000 ? 56 : 32,
          right: sizeScreenWidth > 1000 ? 18 : 32,
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
