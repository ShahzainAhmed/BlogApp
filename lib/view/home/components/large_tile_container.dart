import 'dart:ui';
import 'package:blog_app/controllers/favourite_controller.dart';
import 'package:blog_app/models/details_model.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeTileContainer extends StatelessWidget {
  final VoidCallback onTap;
  final DetailsModel detailsModel;
  const LargeTileContainer(
      {super.key, required this.detailsModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    FavouriteController favouriteController = Get.put(FavouriteController());
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: detailsModel.blogImage,
        child: Container(
          clipBehavior: Clip.antiAlias,
          height: 300.h,
          width: 300.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: DecorationImage(
              image: AssetImage(detailsModel.blogImage),
              fit: BoxFit.cover,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(
                () => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: IconButton(
                    icon: Icon(
                      favouriteController.isFavourite.value
                          ? Icons.favorite
                          : Icons.favorite_outline,
                    ),
                    iconSize: 30,
                    color: AppColors.kWhiteColor,
                    onPressed: () {
                      favouriteController.toggleFavourite();
                    },
                  ),
                ),
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      children: [
                        Text(
                          detailsModel.smallTitle,
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.kWhiteColor,
                          )),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(detailsModel.authorImage),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              detailsModel.author,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.kWhiteColor,
                              )),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.access_time,
                              size: 18,
                              color: AppColors.kWhiteColor,
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              detailsModel.time,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.kWhiteColor,
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
