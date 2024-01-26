import 'package:blog_app/controllers/detail_screen_controller.dart';
import 'package:blog_app/models/details_model.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:blog_app/resources/styles/app_typography.dart';
import 'package:blog_app/view/detail_screen/components/custom_button.dart';
import 'package:blog_app/view/detail_screen/components/custom_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  final DetailsModel detailsModel;
  const DetailScreen({super.key, required this.detailsModel});

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
                  image: AssetImage(detailsModel.blogImage), fit: BoxFit.cover),
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
                    detailsModel.title,
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor,
                    )),
                  ),
                  CustomRow(
                    rating: detailsModel.rating,
                    time: detailsModel.time,
                    views: detailsModel.views,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(detailsModel.authorImage),
                      radius: 23.r,
                    ),
                    title:
                        Text(detailsModel.author, style: AppTypography.kBold16),
                  ),
                  Text(
                    detailsModel.description,
                    style: AppTypography.kMedium12
                        .copyWith(color: AppColors.kLightGreyColor),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 5.h),
                  CustomButton(buttonColor: detailsModel.buttonColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
