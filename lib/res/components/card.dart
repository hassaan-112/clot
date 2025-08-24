import 'package:clot/res/assets/icons.dart';
import 'package:clot/res/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final bool isLiked;
  final VoidCallback? onLikeTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.isLiked = false,
    this.onLikeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image + Like button
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: onLikeTap,
                  child: isLiked?SvgPicture.asset(IconRoutes.heartActive): SvgPicture.asset(IconRoutes.heart),
                ),
              ),
            ],
          ),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis),
            ),
          ),

          // Price
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 12),
            child: Text(
              price,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700,fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
