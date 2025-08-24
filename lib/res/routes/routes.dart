
import 'package:clot/view/homeScreen.dart';
import 'package:get/get.dart';
import '../../res/routes/routeNames.dart';
import '../../view/splaashScreen.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () { return SplashScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 800)),
    GetPage(name: RouteName.homeScreen, page: () { return HomeScreen(); }, transition: Transition.fadeIn,transitionDuration: Duration(milliseconds: 800)),
      ];
}
