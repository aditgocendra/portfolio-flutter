import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../core/constant/color_constant.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          left: 56,
          top: 24,
          bottom: 16,
          right: 18,
        ),
        child: Stack(
          children: [
            // Appbar
            const AppBarCustom(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Content
                Row(
                  children: const [
                    Expanded(
                      child: LeftContent(),
                    ),
                    Expanded(
                      child: RighContent(),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RighContent extends StatelessWidget {
  const RighContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/image_profile.png',
        width: 320,
      ),
    );
  }
}

class LeftContent extends StatelessWidget {
  const LeftContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hi There,",
          style: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        Row(
          children: const [
            Text(
              "I'm ",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Aditya Gocendra",
              style: TextStyle(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: const StadiumBorder(),
                minimumSize: const Size(210, 50),
              ),
              child: const Text("Portfolio"),
            ),
            const SizedBox(
              width: 24,
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: primaryColor,
                ),
                shape: const StadiumBorder(),
                minimumSize: const Size(210, 50),
              ),
              child: const Text(
                'Contact',
                style: TextStyle(color: primaryColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({super.key});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Aditya Gocendra',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Expanded(
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
            controller: tabController,
            tabs: const [
              Tab(
                text: "Recent Work",
              ),
              Tab(
                text: "About",
              ),
              Tab(
                text: "Education",
              ),
              Tab(
                text: "Contact",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
