import 'package:clot/view/homeScreen.dart';
import 'package:clot/view/notifications.dart';
import 'package:clot/view/orders.dart';
import 'package:clot/view/profile.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../res/colors/appColors.dart';
import '../res/assets/icons.dart';
import '../view_model/mainVM.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final _navBarVM = Get.put(mainViewModel());

  @override
  void initState() {
    super.initState();
    _navBarVM.getProducts();
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [HomeScreen(),Notifications(),OrdersScreen(),Profile()];
    return Scaffold(
      body: Obx(() => IndexedStack(index: _navBarVM.index.value, children: pages)),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.secondaryBlack,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            _navBarVM.index.value=value;
          },
          currentIndex: _navBarVM.index.value,
          items: [
            BottomNavigationBarItem(
              icon: _navBarVM.index.value!=0?SvgPicture.asset(IconRoutes.home):SvgPicture.asset(IconRoutes.homeActive),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _navBarVM.index.value!=1?SvgPicture.asset(IconRoutes.notifi):SvgPicture.asset(IconRoutes.notifiActive),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _navBarVM.index.value!=2?SvgPicture.asset(IconRoutes.order):SvgPicture.asset(IconRoutes.orderActive),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: _navBarVM.index.value!=3?SvgPicture.asset(IconRoutes.profile):SvgPicture.asset(IconRoutes.profileActive),
              label: "",
            ),
          ],
        ),
      ),
    );

  }
}
