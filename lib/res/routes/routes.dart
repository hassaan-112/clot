
import 'package:clot/view/detailScreen.dart';
import 'package:clot/view/homeScreen.dart';
import 'package:get/get.dart';
import '../../res/routes/routeNames.dart';
import '../../view/bottomNavScreen.dart';
import '../../view/categories.dart';
import '../../view/splaashScreen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () { return SplashScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: RouteName.homeScreen, page: () { return HomeScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: RouteName.categories, page: () { return CategoriesScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: RouteName.detailScreen, page: () { return DetailScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 500)),
    GetPage(name: RouteName.bottomnav, page: () { return BottomNav(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 500)),
      ];
}
