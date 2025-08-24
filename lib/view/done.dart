import 'package:clot/res/assets/images.dart';
import 'package:clot/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({super.key});

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
          154.h.verticalSpace,
          Center(child: Image.asset(ImageRoutes.done),),
          Spacer(),
          Container(

            width: double.infinity,
            height: 310.h,
            decoration: BoxDecoration(color: AppColors.grey,borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r))),
            child: Column(
              children: [
                30.h.verticalSpace,
                Text("Order Placed\nSuccessfully",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.black,fontSize: 30),),
                30.h.verticalSpace,
                Text("You will receive a confirmation email shortly",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.geryContainer),),
                40.h.verticalSpace,
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 24.w),
                    child: Container(

                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(100.r)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [Text("See your order detail",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
                        ],),
                      ),
                    ),
                  ),
                ),

              ]
            ),
          )
        ],
      ),
    );
  }
}
