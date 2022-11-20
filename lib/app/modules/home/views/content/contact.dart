import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/utility/style_util.dart';

import '../../../../core/constant/values.dart';
import '../../../../core/utility/url_redirect_util.dart';
import '../../../../core/constant/color_constant.dart';
import '../../controllers/home_controller.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 32,
        bottom: 64,
      ),
      child: Row(
        children: [
          const Expanded(
            child: LeftContact(),
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            flex: 6,
            child: RightContact(),
          ),
        ],
      ),
    );
  }
}

class RightContact extends StatelessWidget {
  RightContact({
    Key? key,
  }) : super(key: key);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryPrimaryColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Container(
            margin: const EdgeInsets.all(32),
            child: Column(
              children: [
                TextField(
                  controller: controller.textEmailEdt,
                  decoration: UtilityStyle().inputDecorationDefault(
                    'Your Email',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: controller.textNameEdt,
                  decoration: UtilityStyle().inputDecorationDefault(
                    'Your Name',
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: controller.textSubjectEdt,
                  decoration: UtilityStyle().inputDecorationDefault(
                    'Subject',
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  minLines: 15,
                  maxLines: 20,
                  keyboardType: TextInputType.multiline,
                  controller: controller.textMessageEdt,
                  decoration: const InputDecoration(
                    fillColor: secondaryLightColor,
                    filled: true,
                    hintText: 'Your Message',
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 24,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.sendEmail();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadowColor: Colors.transparent,
                    minimumSize: const Size.fromHeight(60),
                  ),
                  child: const Text("Send Message"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LeftContact extends StatelessWidget {
  const LeftContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryPrimaryColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: listContact
                .map(
                  (val) => InkWell(
                    onTap: () {
                      final Uri url = Uri.parse(
                        val['url_redirect'],
                      );
                      UtilityUrlRedirect().launchInBrowser(url);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                        bottom: 18,
                        top: 12,
                      ),
                      decoration: BoxDecoration(
                        color: secondaryLightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        val['icon'],
                        color: primaryColor,
                        size: 48,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          decoration: BoxDecoration(
            color: secondaryPrimaryColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: GridView.builder(
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: listSocialMedia.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  final Uri url = Uri.parse(
                    listSocialMedia[index]['url_redirect'],
                  );
                  UtilityUrlRedirect().launchInBrowser(
                    url,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 18,
                    top: 12,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    listSocialMedia[index]['icon'],
                    color: primaryColor,
                    size: 48,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
