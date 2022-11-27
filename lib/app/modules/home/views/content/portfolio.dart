import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unicons/unicons.dart';
import 'package:get/get.dart';
import '../../../../core/utility/screen_size_util.dart';
import '../../../../core/utility/url_redirect_util.dart';
import '../../controllers/portfolio_controller.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/constant/color_constant.dart';

class RecentWork extends StatelessWidget {
  const RecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioController = Get.find<PortfolioController>();

    return Padding(
      padding: EdgeInsets.only(
        right: UtilityScreenSize().isLarge(context) ? 32 : 0,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 36),
            child: Text(
              recentWork,
              style: TextStyle(fontSize: 20),
            ),
          ),
          if (UtilityScreenSize().isLarge(context) ||
              UtilityScreenSize().isMedium(context))
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
                  text: "Website",
                ),
                Tab(
                  text: "Android",
                ),
                Tab(
                  text: "Games",
                ),
              ],
            ),
          if (UtilityScreenSize().isSmall(context))
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
                  icon: Icon(UniconsLine.web_section),
                ),
                Tab(
                  icon: Icon(UniconsLine.android),
                ),
                Tab(
                  icon: Icon(UniconsLine.game_structure),
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
                ProjectGrid(
                  listProject: listProjectWebsite,
                ),
                ProjectGrid(
                  listProject: listProjectAndroid,
                ),
                ProjectGrid(
                  listProject: listProjectGames,
                ),
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
    int crossAxis = 4;

    if (UtilityScreenSize().isLarge(context)) {
      crossAxis = 4;
    }

    if (UtilityScreenSize().isMedium(context)) {
      crossAxis = 2;
    }

    if (UtilityScreenSize().isSmall(context)) {
      crossAxis = 1;
    }

    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxis,
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
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return DialogDetailProject(
              project: project,
            );
          },
        );
      },
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
                    child: Image.asset(
                      project['image_asset'],
                    ),
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

class DialogDetailProject extends StatelessWidget {
  final Map<String, dynamic> project;

  const DialogDetailProject({
    required this.project,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> tech = project['tech'];
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      elevation: 0.5,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 800,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 16,
        ),
        decoration: const BoxDecoration(
          color: secondaryPrimaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (!UtilityScreenSize().isSmall(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Detail Project',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.close,
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                height: 16,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  project['banner_asset'],
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              if (!UtilityScreenSize().isSmall(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      project['name_app'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 64,
                      height: 64,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: secondaryLightColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        project['icon_project'],
                      ),
                    ),
                  ],
                ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Description : ${project['description']}',
                style: const TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 32,
              ),
              if (UtilityScreenSize().isLarge(context) ||
                  UtilityScreenSize().isMedium(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: tech.map((val) {
                        return Container(
                          width: 64,
                          height: 64,
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: secondaryLightColor,
                          ),
                          child: SvgPicture.asset(
                            val['logo_tech'],
                            height: 32,
                          ),
                        );
                      }).toList(),
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: project['link_github'] == null
                              ? null
                              : () {
                                  UtilityUrlRedirect().launchInBrowser(
                                    Uri.parse(
                                      project['link_github'],
                                    ),
                                  );
                                },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: project['link_github'] == null
                                  ? secondaryLightColor
                                  : primaryColor,
                            ),
                            shape: const StadiumBorder(),
                            minimumSize: const Size(100, 50),
                          ),
                          child: Text(
                            'Repository',
                            style: TextStyle(
                              color: project['link_github'] == null
                                  ? secondaryLightColor
                                  : primaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        ElevatedButton(
                          onPressed: project['link_publish'] == null
                              ? null
                              : () {
                                  UtilityUrlRedirect().launchInBrowser(
                                    Uri.parse(project['link_publish']),
                                  );
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryLightColor,
                            shape: const StadiumBorder(),
                            minimumSize: const Size(100, 50),
                          ),
                          child: const Text("Try"),
                        ),
                      ],
                    ),
                  ],
                ),
              if (UtilityScreenSize().isSmall(context))
                Wrap(
                  children: tech.map((val) {
                    return Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: secondaryLightColor,
                      ),
                      child: SvgPicture.asset(
                        val['logo_tech'],
                      ),
                    );
                  }).toList(),
                ),
              if (UtilityScreenSize().isSmall(context))
                Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: project['link_github'] == null
                            ? null
                            : () {
                                UtilityUrlRedirect().launchInBrowser(
                                  Uri.parse(
                                    project['link_github'],
                                  ),
                                );
                              },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: project['link_github'] == null
                                ? secondaryLightColor
                                : primaryColor,
                          ),
                          shape: const StadiumBorder(),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: Text(
                          'Repository',
                          style: TextStyle(
                            color: project['link_github'] == null
                                ? secondaryLightColor
                                : primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: project['link_publish'] == null
                            ? null
                            : () {
                                UtilityUrlRedirect().launchInBrowser(
                                  Uri.parse(project['link_publish']),
                                );
                              },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryLightColor,
                          shape: const StadiumBorder(),
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text("Try"),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
