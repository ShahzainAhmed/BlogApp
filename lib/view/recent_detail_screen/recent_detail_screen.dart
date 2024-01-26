import 'package:blog_app/controllers/detail_screen_controller.dart';
import 'package:blog_app/models/recent_blogs_model.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:blog_app/resources/styles/app_typography.dart';
import 'package:blog_app/view/detail_screen/components/custom_button.dart';
import 'package:blog_app/view/detail_screen/components/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RecentDetailScreen extends StatelessWidget {
  final RecentBlogsModel recentBlogsModel;
  const RecentDetailScreen({super.key, required this.recentBlogsModel});

  @override
  Widget build(BuildContext context) {
    DetailScreenController detailScreenController =
        Get.put(DetailScreenController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kWhiteColor,
            )),
        actions: [
          Obx(
            () => IconButton(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                onPressed: () {
                  detailScreenController.toggleFavourite();
                },
                icon: Icon(
                  detailScreenController.isFavourite.value
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  color: AppColors.kWhiteColor,
                )),
          ),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.height * 0.6,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(recentBlogsModel.image), fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
              height: Get.height * 0.6,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recentBlogsModel.title,
                    style: AppTypography.kExtraBold18,
                  ),
                  CustomRow(
                    rating: recentBlogsModel.rating,
                    time: recentBlogsModel.time,
                    views: recentBlogsModel.views,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(recentBlogsModel.authorImage),
                      radius: 23.r,
                    ),
                    title: Text(recentBlogsModel.author,
                        style: AppTypography.kBold16),
                  ),
                  Text(
                    recentBlogsModel.description,
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kLightGreyColor),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 5.h),
                  CustomButton(buttonColor: recentBlogsModel.buttonColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
