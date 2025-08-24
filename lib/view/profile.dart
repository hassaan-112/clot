import 'package:clot/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../res/assets/icons.dart';
import '../res/assets/images.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.h.verticalSpace,
            CircleAvatar(
              radius: 40.h,
              backgroundImage: AssetImage(ImageRoutes.pic),
            ),
            32.h.verticalSpace,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
              height: 96.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color:AppColors.grey,
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Muhammad Hassaan",style: Theme.of(context).textTheme.titleMedium,),
                      Text("muhammadhassaan1915@gmail.com",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.geryContainer),),
                      Text("+92 322 5919194",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.geryContainer),)
                    ],
                  ),
                  Text("Edit",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.primary,fontWeight: FontWeight.w700),)
                ],
              ),
            ),
            26.h.verticalSpace,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
              height: 56.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:AppColors.grey,
                  borderRadius: BorderRadius.circular(10.r)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Address",style: Theme.of(context).textTheme.titleMedium!.copyWith(),),
                  Transform.rotate(
                    angle: 180 * 3.14159265359 / 180,
                      child: SvgPicture.asset(IconRoutes.back,height: 20,))
              ]
              )

            ),
            8.h.verticalSpace,
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 56.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:AppColors.grey,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Wishlist",style: Theme.of(context).textTheme.titleMedium!.copyWith(),),
                      Transform.rotate(
                          angle: 180 * 3.14159265359 / 180,
                          child: SvgPicture.asset(IconRoutes.back,height: 20,))
                    ]
                )

            ),
            8.h.verticalSpace,
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 56.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:AppColors.grey,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment",style: Theme.of(context).textTheme.titleMedium!.copyWith(),),
                      Transform.rotate(
                          angle: 180 * 3.14159265359 / 180,
                          child: SvgPicture.asset(IconRoutes.back,height: 20,))
                    ]
                )

            ),
            8.h.verticalSpace,
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 56.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:AppColors.grey,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Help",style: Theme.of(context).textTheme.titleMedium!.copyWith(),),
                      Transform.rotate(
                          angle: 180 * 3.14159265359 / 180,
                          child: SvgPicture.asset(IconRoutes.back,height: 20,))
                    ]
                )

            ),
            8.h.verticalSpace,
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 56.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color:AppColors.grey,
                    borderRadius: BorderRadius.circular(10.r)
                ),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Support",style: Theme.of(context).textTheme.titleMedium!.copyWith(),),
                      Transform.rotate(
                          angle: 180 * 3.14159265359 / 180,
                          child: SvgPicture.asset(IconRoutes.back,height: 20,))
                    ]
                )

            ),
            28.h.verticalSpace,
            Center(child: Text("Sign Out",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.negativeRed,fontWeight: FontWeight.w700),),)



          ],
        ),
      ),
    );
  }
}
