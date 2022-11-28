import 'package:flutter/cupertino.dart';

class UtilityScreenSize {
  // Size
  // 0 == Width Screen > 1100 Large
  // 1 == Width Screen < 1100 && Width Screen > 650 Medium
  // 2 == Width Screen < 650 Small

  bool isLarge(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;
    if (sizeScreenWidth > 1100) {
      return true;
    }
    return false;
  }

  bool isMedium(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;
    if (sizeScreenWidth < 1100 && sizeScreenWidth > 650) {
      return true;
    }
    return false;
  }

  bool isSmall(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;
    if (sizeScreenWidth < 650) {
      return true;
    }
    return false;
  }

  bool isVerySmall(BuildContext context) {
    final sizeScreenWidth = MediaQuery.of(context).size.width;
    if (sizeScreenWidth < 300) {
      return true;
    }
    return false;
  }
}
