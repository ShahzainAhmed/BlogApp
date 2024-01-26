import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:blog_app/resources/styles/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  const CustomButton({super.key, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(Get.width, 40.h),
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      onPressed: () {},
      child: Text("READ MORE",
          style: AppTypography.kBold18.copyWith(
            color: AppColors.kWhiteColor,
          )),
    );
  }
}
