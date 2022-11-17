import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import '../../../../core/constant/color_constant.dart';

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
        children: const [
          Expanded(
            child: LeftContact(),
          ),
          SizedBox(
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
  const RightContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: secondaryPrimaryColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Container(
        margin: const EdgeInsets.all(32),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                fillColor: secondaryLightColor,
                filled: true,
                hintText: 'Your Email',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const TextField(
              minLines: 15,
              maxLines: 20,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                fillColor: secondaryLightColor,
                filled: true,
                hintText: 'Your Message',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
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
              onPressed: () {},
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
            children: [
              Container(
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
                child: const Icon(
                  UniconsLine.whatsapp,
                  color: primaryColor,
                  size: 48,
                ),
              ),
              Container(
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
                child: const Icon(
                  UniconsLine.telegram_alt,
                  color: primaryColor,
                  size: 48,
                ),
              )
            ],
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: const Icon(
                      UniconsLine.twitter,
                      color: primaryColor,
                      size: 48,
                    ),
                  ),
                  Container(
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
                    child: const Icon(
                      UniconsLine.linkedin,
                      color: primaryColor,
                      size: 48,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: const Icon(
                      UniconsLine.instagram,
                      color: primaryColor,
                      size: 48,
                    ),
                  ),
                  Container(
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
                    child: const Icon(
                      UniconsLine.facebook_f,
                      color: primaryColor,
                      size: 48,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                    child: const Icon(
                      UniconsLine.youtube,
                      color: primaryColor,
                      size: 48,
                    ),
                  ),
                  Container(
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
                    child: const Icon(
                      UniconsLine.github,
                      color: primaryColor,
                      size: 48,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
