import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/views/content/about.dart';
import 'package:portfolio/app/modules/home/views/content/education.dart';
import 'package:portfolio/app/modules/home/views/content/recent_work.dart';
import '../../../core/constant/color_constant.dart';
import '../controllers/home_controller.dart';
import 'content/home..dart';

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
          children: [
            const Home(),
            const About(),
            const Education(),
            RecentWork(),
            const Center(
              child: Text("5"),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarCustom extends StatelessWidget {
  AppBarCustom({super.key});

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 56,
        top: 20,
        right: 18,
      ),
      child: Row(
        children: [
          const Text(
            'Aditya Gocendra',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 650,
            child: TabBar(
              indicator: const ShapeDecoration(
                shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              padding: EdgeInsets.zero,
              indicatorColor: Colors.black,
              labelColor: primaryColor,
              unselectedLabelColor: Colors.white,
              controller: controller.tabNavBarController,
              tabs: const [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "About",
                ),
                Tab(
                  text: "Education",
                ),
                Tab(
                  text: "Recent Work",
                ),
                Tab(
                  text: "Contact",
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
