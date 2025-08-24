import 'package:clot/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../res/assets/icons.dart';
class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  EdgeInsets.only(top:28.0),
            child: Center(child: Text("Notifications",style:Theme.of(context).textTheme.headlineLarge),),
          ),
              Center(
                child: Column(
                  children: [
                    Image.asset(IconRoutes.bell),
                    24.h.verticalSpace,
                    Text("No Notifications Yet",style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w100)),
                    24.h.verticalSpace,
                    Container(height: 52.h,width: 200.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100.r),color: AppColors.primary),child: Center(child: Text("Explore Categories",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.white)),))
      
                  ]
                ),
              ),
          SizedBox()
            ],
          ),
    );
  }
}
