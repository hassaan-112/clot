import 'package:clot/res/assets/icons.dart';
import 'package:clot/res/assets/images.dart';
import 'package:clot/res/colors/appColors.dart';
import 'package:clot/res/components/card.dart';
import 'package:clot/res/components/searchComponent.dart';
import 'package:clot/res/routes/routeNames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../view_model/mainVM.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _mainVM = Get.put(mainViewModel());

  @override
  void initState() {
    super.initState();
    _mainVM.getProducts();

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(radius: 20.h,backgroundImage: AssetImage(ImageRoutes.pic),),
                        Container(height: 40.h,width: 72.w,decoration: BoxDecoration(color: AppColors.grey,borderRadius: BorderRadius.circular(100.r)),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Text("Men",style: Theme.of(context).textTheme.bodySmall),Transform.rotate(
                        angle: 4.7,
                        child: SvgPicture.asset(IconRoutes.back,height: 15.h,width: 15.w,))]),),
                        GestureDetector(onTap: (){Get.toNamed(RouteName.bag);},child: CircleAvatar(radius: 20.h,backgroundColor: AppColors.primary,child: SvgPicture.asset(IconRoutes.bag),))
                      ],
                    ),

                24.h.verticalSpace,
                SizedBox(height: 40.h,child: SearchTextField(hintText: "Search", controller: _mainVM.searchController, focusNode: _mainVM.searchFocusNode,   onTapOutside:(){_mainVM.searchFocusNode.unfocus();}, iconPath: IconRoutes.search,)),
                24.h.verticalSpace,
                GestureDetector(
                  onTap: (){Get.toNamed(RouteName.categories);},
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Categories",style: Theme.of(context).textTheme.headlineMedium,),Text("See All",style: Theme.of(context).textTheme.bodyLarge,)],)),
                16.h.verticalSpace,
                SizedBox(height: 110,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(children: [CircleAvatar(radius: 28.r,backgroundImage: AssetImage(ImageRoutes.tp1),),5.h.verticalSpace,Text("Hoodies",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))],),
                      9.w.horizontalSpace,
                      Column(children: [CircleAvatar(radius: 28.r,backgroundImage: AssetImage(ImageRoutes.tp2),),5.h.verticalSpace,Text("Shorts",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))],),
                      9.w.horizontalSpace,
                      Column(children: [CircleAvatar(radius: 28.r,backgroundImage: AssetImage(ImageRoutes.tp3),),5.h.verticalSpace,Text("Shoes",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))],),
                      9.w.horizontalSpace,
                      Column(children: [CircleAvatar(radius: 28.r,backgroundImage: AssetImage(ImageRoutes.tp4),),5.h.verticalSpace,Text("Bag",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))],),
                      9.w.horizontalSpace,
                      Column(children: [CircleAvatar(radius: 28.r,backgroundImage: AssetImage(ImageRoutes.tp5),),5.h.verticalSpace,Text("Accessories",style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400))],),
                    ],
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Top Selling",style: Theme.of(context).textTheme.headlineMedium,),Text("See All",style: Theme.of(context).textTheme.bodyLarge,)],),
                6.h.verticalSpace,
                  ],
                ),
              ),
              SizedBox(
                height: 278.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                    itemBuilder:(context,index){
                  return Obx(()=> InkWell(onTap: (){Get.toNamed(RouteName.detailScreen);},child: ProductCard(title:_mainVM.products[index].title!, price:_mainVM.products[index].price!, imageUrl:_mainVM.products[index].imageUrl!,isLiked: _mainVM.products[index].isLiked!,onLikeTap: (){_mainVM.products[index].isLiked=!_mainVM.products[index].isLiked!;_mainVM.products.refresh();},)));

                    }),
              ),
              17.h.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("New In",style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.primary),),Text("See All",style: Theme.of(context).textTheme.bodyLarge,)],),
              ),
              6.h.verticalSpace,
              SizedBox(
                height: 278.h,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder:(context,index){
                      return Obx(()=> ProductCard(title:_mainVM.products[index+3].title!, price:_mainVM.products[index+3].price!, imageUrl:_mainVM.products[index+3].imageUrl!,isLiked: _mainVM.products[index+3].isLiked!,onLikeTap: (){_mainVM.products[index+3].isLiked=!_mainVM.products[index+3].isLiked!;_mainVM.products.refresh();},));
                    }),
              ),
            ],
          ),
        )
      );
  }
}
