import 'package:animated_text_kit/animated_text_kit.dart';
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
                ProjectGrid(listProject: listProjectAndroid),
                ProjectGrid(listProject: listProjectWebsite),
                ProjectGrid(listProject: listProjectGames),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectGrid extends StatelessWidget {
  final List<Map<String, dynamic>> listProject;
  const ProjectGrid({
    super.key,
    required this.listProject,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: listProject.length,
      itemBuilder: (context, index) => ProjectCard(
        project: listProject[index],
        index: index,
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final controller = Get.find<HomeController>();

  final Map<String, dynamic> project;
  final int index;

  ProjectCard({
    Key? key,
    required this.project,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fix this later (add list is infinity)
    controller.listAnimatedProject.add({
      'hover_text_color': Colors.white,
      'opacity_image': 0.5,
    });

    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (value) {
        if (value) {
          controller.listAnimatedProject[index]['hover_text_color'] =
              primaryColor;
          controller.listAnimatedProject[index]['opacity_image'] = 0.3;
          controller.update();
          return;
        }
        controller.listAnimatedProject[index]['hover_text_color'] =
            Colors.white;
        controller.listAnimatedProject[index]['opacity_image'] = 0.5;
        controller.update();
      },
      child: Container(
        margin: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: secondaryPrimaryColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: GetBuilder(
          init: controller,
          builder: (_) {
            return Stack(
              children: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: controller.listAnimatedProject[index]
                      ['opacity_image'],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(36),
                    child: Image.asset('assets/images/project/main_market.png'),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: controller.listAnimatedProject[index]
                            ['hover_text_color'],
                      ),
                      child: Text(
                        project['name_app'],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
