import 'package:clot/res/routes/routeNames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../res/assets/icons.dart';
import '../res/assets/images.dart';
import '../res/colors/appColors.dart';
class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              20.h.verticalSpace,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){Get.back();},child: CircleAvatar(radius: 20.h,backgroundColor: AppColors.grey,child: SvgPicture.asset(IconRoutes.back, height:  20,width:20,),)),
                  Text("Checkout",style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(width: 35,),
                ],
              ),
              20.h.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 72.h,
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
                        Text("Shipping Address",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.geryContainer),),
                        Text("Jhaz Ground Sahiwal, Pakistan",style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis),),
                      ],
                    ),
                    Transform.rotate(
                        angle: 180 * 3.14159265359 / 180,
                        child: SvgPicture.asset(IconRoutes.back,height: 20,))
                  ],
                ),
              ),
              20.h.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                height: 72.h,
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
                        Text("Payment Method",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.geryContainer),),
                        Row(
                          children: [
                            Text("**** 4156",style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis),),
                            10.w.horizontalSpace,
                            Image.asset(ImageRoutes.master)
                          ],
                        ),
                      ],
                    ),
                    Transform.rotate(
                        angle: 180 * 3.14159265359 / 180,
                        child: SvgPicture.asset(IconRoutes.back,height: 20,))
                  ],
                ),
              ),



              Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Subtotal",style: Theme.of(context).textTheme.bodyLarge!.copyWith(),),Text("\$148",style: Theme.of(context).textTheme.bodyMedium!.copyWith(),)],
              ),
              12.h.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Delivery",style: Theme.of(context).textTheme.bodyLarge!.copyWith(),),Text("\$8",style: Theme.of(context).textTheme.bodyMedium!.copyWith(),)],
              ),
              12.h.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Tax",style: Theme.of(context).textTheme.bodyLarge!.copyWith(),),Text("\$0",style: Theme.of(context).textTheme.bodyMedium!.copyWith(),)],
              ),
              12.h.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Total",style: Theme.of(context).textTheme.bodyLarge!.copyWith(),),Text("\$156",style: Theme.of(context).textTheme.bodyMedium!.copyWith(),)],
              ),
              62.h.verticalSpace,

              GestureDetector(
                onTap: (){
                  Get.toNamed(RouteName.done);
                },
                child: Container(

                  width: double.infinity,
                  height: 56.h,
                  decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(100.r)),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("\$156",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.white),),Text("Place Order",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
                    ],),
                  ),
                ),
              ),
              20.h.verticalSpace,
            ],
          ),
        ),
      )
    );
  }
}
