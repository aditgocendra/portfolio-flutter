import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/constant/color_constant.dart';
import '../../controllers/home_controller.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 36),
            child: Text(
              recentWork,
              style: TextStyle(fontSize: 20),
            ),
          ),
          TabBar(
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
            controller: controller.tabRecentWorkController,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            tabs: const [
              Tab(
                text: "Android",
              ),
              Tab(
                text: "Website",
              ),
              Tab(
                text: "Games",
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: TabBarView(
              controller: controller.tabRecentWorkController,
              children: const [
                ProjectGrid(itemCount: 8),
                ProjectGrid(itemCount: 3),
                ProjectGrid(itemCount: 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectGrid extends StatelessWidget {
  final int itemCount;
  const ProjectGrid({super.key, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: secondaryPrimaryColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(36),
                child: Image.asset('assets/images/project/main_market.png'),
              ),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  'Main Market',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
