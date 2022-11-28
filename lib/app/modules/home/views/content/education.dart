import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/utility/screen_size_util.dart';
import '../../../../core/constant/color_constant.dart';
import '../../controllers/education_controller.dart';

class Education extends GetView<EducationController> {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    if (UtilityScreenSize().isVerySmall(context)) {
      return Container();
    }
    return Padding(
      padding: EdgeInsets.only(
        right: UtilityScreenSize().isLarge(context) ? 32 : 0,
      ),
      child: Stack(
        children: [
          if (UtilityScreenSize().isLarge(context))
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 1050,
                height: 760,
                decoration: BoxDecoration(
                  color: secondaryLightColor,
                  borderRadius: BorderRadius.circular(64),
                ),
              ),
            ),
          Align(
            alignment: UtilityScreenSize().isLarge(context)
                ? Alignment.centerLeft
                : Alignment.center,
            child: Container(
              width: 870,
              constraints: BoxConstraints(
                maxHeight: !UtilityScreenSize().isSmall(context)
                    ? 610
                    : double.infinity,
              ),
              decoration: BoxDecoration(
                color: secondaryPrimaryColor,
                borderRadius: BorderRadius.circular(64),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: listEducation.map((val) {
                    return ListTile(
                      title: Text(
                        val['institution'],
                        style: TextStyle(
                          fontSize: UtilityScreenSize().isSmall(context) ||
                                  UtilityScreenSize().isVerySmall(context)
                              ? 20
                              : 28,
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        val['degree'],
                        style: TextStyle(
                          fontSize: UtilityScreenSize().isSmall(context) ||
                                  UtilityScreenSize().isVerySmall(context)
                              ? 12
                              : 20,
                          color: Colors.grey.shade500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      trailing: Text(
                        val["from_year"] + ' ~ ' + val["end_year"],
                        style: TextStyle(
                          fontSize: UtilityScreenSize().isSmall(context) ||
                                  UtilityScreenSize().isVerySmall(context)
                              ? 12
                              : 18,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
