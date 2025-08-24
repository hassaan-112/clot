import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../res/assets/icons.dart';
import '../res/assets/images.dart';
import '../res/colors/appColors.dart';
import '../res/components/searchComponent.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h,vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){Get.back();},child: CircleAvatar(radius: 20.h,backgroundColor: AppColors.grey,child: SvgPicture.asset(IconRoutes.back, height:  20,width:20,),)),
                  ],
              ),
              24.h.verticalSpace,

              Text("Shop by Categories",style: Theme.of(context).textTheme.titleLarge,),
              14.h.verticalSpace,
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    height: 64.h,
                    child: Card(
                      color: AppColors.grey,
                      child: Row(
                        children: [
                          10.w.horizontalSpace,
                          CircleAvatar(radius: 20.r,backgroundImage: AssetImage(ImageRoutes.tp1),),
                          10.w.horizontalSpace,
                          Text("Hoodies",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                    child: Card(
                      color: AppColors.grey,
                      child: Row(
                        children: [
                          10.w.horizontalSpace,
                          CircleAvatar(radius: 20.r,backgroundImage: AssetImage(ImageRoutes.tp5),),
                          10.w.horizontalSpace,
                          Text("Accessories",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                    child: Card(
                      color: AppColors.grey,
                      child: Row(
                        children: [
                          10.w.horizontalSpace,
                          CircleAvatar(radius: 20.r,backgroundImage: AssetImage(ImageRoutes.tp2),),
                          10.w.horizontalSpace,
                          Text("Shorts",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                    child: Card(
                      color: AppColors.grey,
                      child: Row(
                        children: [
                          10.w.horizontalSpace,
                          CircleAvatar(radius: 20.r,backgroundImage: AssetImage(ImageRoutes.tp3),),
                          10.w.horizontalSpace,
                          Text("Shoes",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))
                        ],

                      ),

                    ),
                  ),
                  SizedBox(
                    height: 64.h,
                    child: Card(
                      color: AppColors.grey,
                      child: Row(
                        children: [
                          10.w.horizontalSpace,
                          CircleAvatar(radius: 20.r,backgroundImage: AssetImage(ImageRoutes.tp4),),
                          10.w.horizontalSpace,
                          Text("Bags",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))
                        ],

                      ),

                    ),
                  ),

                ],
              )

        
        
            ],
          ),
        ),
      ),
    );
  }
}
