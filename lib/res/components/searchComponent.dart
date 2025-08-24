import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../colors/appColors.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;
  final VoidCallback? onTapOutside;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String iconPath; // so you can pass Svg icon path

  const SearchTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.focusNode,
    required this.iconPath,
    this.onTapOutside,
    this.onChanged,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      scrollPhysics: NeverScrollableScrollPhysics(),

      focusNode: focusNode,
      keyboardType: TextInputType.text,
      onTapOutside: (_) => onTapOutside?.call(),
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grey,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 19, right: 12,top: 5),
          child: SvgPicture.asset(iconPath, fit: BoxFit.fill, width: 15),
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 40),
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodySmall,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
