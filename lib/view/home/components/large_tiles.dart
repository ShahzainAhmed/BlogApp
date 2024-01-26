import 'package:blog_app/models/details_model.dart';
import 'package:blog_app/view/detail_screen/detail_screen.dart';
import 'package:blog_app/view/home/components/large_tile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LargeTiles extends StatelessWidget {
  const LargeTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: SizedBox(
            height: 310.h,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 20.w),
              separatorBuilder: (context, index) => SizedBox(width: 20.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: detailsList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    LargeTileContainer(
                      detailsModel: detailsList[index],
                      onTap: () => Get.to(
                          DetailScreen(detailsModel: detailsList[index])),
                    ),
                    SizedBox(height: 10.h),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
