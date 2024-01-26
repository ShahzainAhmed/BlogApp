import 'package:blog_app/models/recent_blogs_model.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatelessWidget {
  final VoidCallback onTap;
  final RecentBlogsModel recentBlogsModel;
  const CustomContainer(
      {super.key, required this.recentBlogsModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        height: 100.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(recentBlogsModel.image),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recentBlogsModel.genre,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kLightGreyColor,
                    )),
                  ),
                  Text(
                    recentBlogsModel.title,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor,
                    )),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        recentBlogsModel.time,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kLightGreyColor,
                        )),
                      ),
                      SizedBox(width: 30.w),
                      const Icon(
                        Icons.remove_red_eye_outlined,
                        size: 20,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        recentBlogsModel.views,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.kLightGreyColor,
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
