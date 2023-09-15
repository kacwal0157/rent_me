import 'package:get/get.dart';
import 'package:rent_me/pages/main_page.dart';

class Routes {
  static String home = '/';

  static String getHomeRoute() => home;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const MainPage(),
    ),
  ];
}
