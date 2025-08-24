import 'package:clot/res/routes/routeNames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../res/assets/icons.dart';
import '../res/assets/images.dart';
import '../res/colors/appColors.dart';
class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
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
                  Text("Cart",style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(width: 30,),
                ],
              ),
              20.h.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [Text("Remove All",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.primary),)],),
              10.h.verticalSpace,
              Container(height: 100,width: double.infinity,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageRoutes.item),fit: BoxFit.fill)),),
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
                  Get.toNamed(RouteName.checkout);
                },
                child: Container(

                  width: double.infinity,
                  height: 56.h,
                  decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(100.r)),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [Text("Checkout",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
                    ],),
                  ),
                ),
              ),
              20.h.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
