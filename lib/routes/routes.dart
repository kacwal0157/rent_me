import 'package:get/get.dart';
import 'package:rent_me/pages/main_page.dart';
import 'package:rent_me/pages/offer_page.dart';
import 'package:rent_me/pages/search_page.dart';

class Routes {
  static String home = '/';
  static String offer = '/offer';
  static String search = '/search';

  static String getHomeRoute() => home;
  static String getOfferPageRoute() => offer;
  static String getSearchPageRoute() => search;

  static List<GetPage> routes = [
    GetPage(
      name: home,
      page: () => const MainPage(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: offer,
      page: () => const OfferPage(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      transition: Transition.downToUp,
    ),
  ];
}
