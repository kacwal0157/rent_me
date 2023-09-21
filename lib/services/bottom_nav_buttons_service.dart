import 'package:get/get.dart';
import 'package:rent_me/constants/constant_enums.dart';
import 'package:rent_me/routes/routes.dart';

getBottomNavBtnAction(BottomNavBtn bottomNavBtn) {
  switch (bottomNavBtn) {
    case BottomNavBtn.home:
      if (Get.currentRoute != '/') {
        Get.toNamed(Routes.getHomeRoute());
      }
      break;

    case BottomNavBtn.search:
      if (Get.currentRoute != '/search') {
        Get.toNamed(Routes.getSearchPageRoute());
      } else {
        Get.back();
      }
      break;
  }
}
