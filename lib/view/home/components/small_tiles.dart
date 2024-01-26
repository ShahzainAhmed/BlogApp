import 'package:blog_app/models/people_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallTiles extends StatelessWidget {
  const SmallTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: SizedBox(
        height: 55.h,
        width: double.infinity,
        child: ListView.separated(
          padding: EdgeInsets.only(right: 20.w),
          separatorBuilder: (context, index) => SizedBox(width: 15.w),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: peopleList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(peopleList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
