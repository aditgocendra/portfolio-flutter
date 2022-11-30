import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utility/screen_size_util.dart';
import '../../../../core/utility/style_util.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/utility/url_redirect_util.dart';
import '../../../../core/constant/color_constant.dart';
import '../../controllers/contact_controller.dart';

class Contact extends GetView<ContactController> {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    // ContactController ContController = controller;
    return Padding(
      padding: EdgeInsets.only(
        right: UtilityScreenSize().isSmall(context) ? 0 : 32,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!UtilityScreenSize().isSmall(context))
            const Expanded(
              child: LeftContact(),
            ),
          if (!UtilityScreenSize().isSmall(context))
            const SizedBox(
              width: 40,
            ),
          Expanded(
            flex: 6,
            child: Container(
              color: secondaryPrimaryColor,
              child: Column(
                children: [
                  TextField(
                    decoration: UtilityStyle().inputDecorationDefault(
                      'Your Email',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RightContact extends StatelessWidget {
  final ContactController controller;
  const RightContact({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: secondaryPrimaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
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
    );
  }
}

class LeftContact extends StatelessWidget {
  const LeftContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double sizeScreenWidth = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        Container(
          decoration: BoxDecoration(
            color: secondaryPrimaryColor,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
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
                      padding: UtilityScreenSize().isLarge(context)
                          ? const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 18,
                              top: 12,
                            )
                          : const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 11,
                              top: 8,
                            ),
                      decoration: BoxDecoration(
                        color: secondaryLightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        val['icon'],
                        color: primaryColor,
                        size: sizeScreenWidth / 40,
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
          child: Wrap(
            alignment: WrapAlignment.center,
            children: listSocialMedia
                .map(
                  (val) => InkWell(
                    onTap: () {
                      final Uri url = Uri.parse(
                        val['url_redirect'],
                      );
                      UtilityUrlRedirect().launchInBrowser(
                        url,
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      padding: UtilityScreenSize().isLarge(context)
                          ? const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 18,
                              top: 12,
                            )
                          : const EdgeInsets.only(
                              left: 10,
                              right: 10,
                              bottom: 11,
                              top: 8,
                            ),
                      decoration: BoxDecoration(
                        color: secondaryLightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        val['icon'],
                        color: primaryColor,
                        size: sizeScreenWidth / 40,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
