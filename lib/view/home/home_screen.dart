import 'package:blog_app/models/recent_blogs_model.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:blog_app/view/home/components/custom_container.dart';
import 'package:blog_app/view/home/components/large_tiles.dart';
import 'package:blog_app/view/home/components/small_tiles.dart';
import 'package:blog_app/view/recent_detail_screen/recent_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        titleSpacing: 20.w,
        title: const Text("Top Writers"),
        titleTextStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.kBlackColor,
        )),
        actions: [
          const Icon(Icons.search, size: 30),
          SizedBox(width: 5.w),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: const Icon(Icons.menu, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
            const SmallTiles(),
            SizedBox(height: 30.h),
            const LargeTiles(),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.kBlackColor,
                      ))),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kLightGreyColor,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: Get.height * 0.8,
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                separatorBuilder: (context, index) => SizedBox(height: 20.h),
                itemCount: recentBlogsList.length,
                itemBuilder: (context, index) {
                  return CustomContainer(
                    onTap: () => Get.to(RecentDetailScreen(
                        recentBlogsModel: recentBlogsList[index])),
                    recentBlogsModel: recentBlogsList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
