import 'package:clot/res/routes/routeNames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../res/assets/icons.dart';
import '../res/assets/images.dart';
import '../res/colors/appColors.dart';
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h,vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){Get.back();},child: CircleAvatar(radius: 20.h,backgroundColor: AppColors.grey,child: SvgPicture.asset(IconRoutes.back, height:  20,width:20,),)),
                    GestureDetector(onTap: (){},child: CircleAvatar(radius: 20.h,backgroundColor: AppColors.grey,child: SvgPicture.asset(IconRoutes.heartActive, height:  20,width:20,),)),
                  ],
                ),
              ),
              14.h.verticalSpace,
              SizedBox(
                height: 248,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    24.w.horizontalSpace,
                  Image.asset(ImageRoutes.pic10),
                  10.w.horizontalSpace,
                  Image.asset(ImageRoutes.pic11),
                  10.w.horizontalSpace,
                  Image.asset(ImageRoutes.pic12),
                    24.w.horizontalSpace,
                ],),
              ),
              24.h.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Men's Harrington Jacket",style: Theme.of(context).textTheme.headlineMedium,),
                    15.h.verticalSpace,
                    Text("\$148.00",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary),),
                    33.h.verticalSpace,
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(color: AppColors.grey,borderRadius: BorderRadius.circular(100.r)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Shorts",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400)),Spacer(),Text("S",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800)),15.w.horizontalSpace,Transform.rotate(angle:4.7,child: SvgPicture.asset(IconRoutes.back,height: 20.h,width: 20.w,)),],),
                      ),
                    ),
                    12.h.verticalSpace,
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(color: AppColors.grey,borderRadius: BorderRadius.circular(100.r)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Color",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400)),Spacer(),CircleAvatar(radius: 10.r,backgroundColor: Color(0xffB3B68B),),15.w.horizontalSpace,Transform.rotate(angle:4.7,child: SvgPicture.asset(IconRoutes.back,height: 20.h,width: 20.w,)),],),
                      ),
                    ),
                    12.h.verticalSpace,
                    Container(
                      width: double.infinity,
                      height: 56.h,
                      decoration: BoxDecoration(color: AppColors.grey,borderRadius: BorderRadius.circular(100.r)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 16.w),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Quantity",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400)),Spacer(),CircleAvatar(radius: 20.h,backgroundColor: AppColors.primary,child: SvgPicture.asset(IconRoutes.add,height: 15.h,width: 15.w,)),15.w.horizontalSpace,Text("1",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w800)),15.w.horizontalSpace,CircleAvatar(radius: 20.h,backgroundColor: AppColors.primary,child: SvgPicture.asset(IconRoutes.minus,height: 3.h)),],),
                      ),
                    ),
                    26.h.verticalSpace,
                    Text("Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: AppColors.geryContainer,letterSpacing: 0.5),),
                    30.h.verticalSpace,


                  ],
                ),
              )
          
          
          
          
            ],
          ),
        ),
      ),
      bottomNavigationBar:                     Padding(
        padding: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 30.h),
        child: GestureDetector(
          onTap: (){
            Get.toNamed(RouteName.bag);
          },
          child: Container(

            width: double.infinity,
            height: 56.h,
            decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(100.r)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("\$148",style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w700,color: AppColors.white)),Spacer(),                    Text("Add to Bag",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.white),),
              ],),
            ),
          ),
        ),
      ),

    );
  }
}
