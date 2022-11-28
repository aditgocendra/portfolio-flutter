import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utility/screen_size_util.dart';
import '../../../core/constant/values.dart';
import '../../../core/constant/color_constant.dart';
import '../controllers/home_controller.dart';
import 'components/app_bar_custom.dart';
import 'components/sidebar_popup.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          left: UtilityScreenSize().isLarge(context) ? 56 : 32,
          right: UtilityScreenSize().isLarge(context) ? 18 : 32,
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
