import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/core/utility/screen_size_util.dart';
import '../../../../core/constant/values.dart';
import '../../../../core/constant/color_constant.dart';

class Certification extends StatelessWidget {
  const Certification({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxis = 4;

    if (UtilityScreenSize().isSmall(context)) {
      crossAxis = 1;
    }

    if (UtilityScreenSize().isMedium(context)) {
      crossAxis = 2;
    }

    if (UtilityScreenSize().isLarge(context)) {
      crossAxis = 4;
    }

    return GridView.builder(
      padding: EdgeInsets.only(
        top: 16,
        right: !UtilityScreenSize().isSmall(context) ? 32 : 0,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxis,
        crossAxisSpacing: 24,
        mainAxisSpacing: 24,
        childAspectRatio: 1.5,
      ),
      itemCount: listCertificated.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: secondaryLightColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              listCertificated[index]['image'],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
