import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/modules/home/controllers/portfolio_controller.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/constant/color_constant.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioController = Get.find<PortfolioController>();

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
            controller: portfolioController.tabPortfolioController,
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
              controller: portfolioController.tabPortfolioController,
              children: [
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
  ProjectGrid({
    super.key,
    required this.listProject,
  });

  final portfolioController = Get.find<PortfolioController>();

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
        portfolioController: portfolioController,
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Map<String, dynamic> project;
  final int index;
  final PortfolioController portfolioController;

  const ProjectCard(
      {Key? key,
      required this.project,
      required this.index,
      required this.portfolioController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fix this later (add list is infinity)
    portfolioController.listAnimatedProject.add({
      'hover_text_color': Colors.white,
      'opacity_image': 0.5,
    });

    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (value) {
        if (value) {
          portfolioController.listAnimatedProject[index]['hover_text_color'] =
              primaryColor;
          portfolioController.listAnimatedProject[index]['opacity_image'] = 0.3;
          portfolioController.update();
          return;
        }
        portfolioController.listAnimatedProject[index]['hover_text_color'] =
            Colors.white;
        portfolioController.listAnimatedProject[index]['opacity_image'] = 0.5;
        portfolioController.update();
      },
      child: Container(
        margin: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: secondaryPrimaryColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: GetBuilder(
          init: portfolioController,
          builder: (_) {
            return Stack(
              children: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: portfolioController.listAnimatedProject[index]
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
                        color: portfolioController.listAnimatedProject[index]
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
