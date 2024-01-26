import 'package:blog_app/resources/assets/image_assets.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RecentBlogsModel {
  final String rating;
  final String author;
  final String genre;
  final String title;
  final String time;
  final String views;
  final String image;
  final String authorImage;
  final String description;
  final Color buttonColor;

  RecentBlogsModel({
    required this.genre,
    required this.title,
    required this.time,
    required this.views,
    required this.image,
    required this.author,
    required this.authorImage,
    required this.description,
    required this.buttonColor,
    required this.rating,
  });
}

List recentBlogsList = [
  RecentBlogsModel(
    genre: "Comics",
    title: "Android 11 could let you double-tap",
    time: "2h ago",
    views: "9K views",
    image: ImageAssets.kProduct1,
    authorImage: ImageAssets.kPerson1,
    author: "Samsad Rashid",
    description:
        "The Android 11 release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
    buttonColor: AppColors.kGreenColor,
    rating: "4.9",
  ),
  RecentBlogsModel(
    genre: "Tech",
    title: "Intel Comet Lake-S prices have leaked",
    time: "25 sec ago",
    views: "7K views",
    image: ImageAssets.kProduct2,
    authorImage: ImageAssets.kPerson2,
    author: "Emma John",
    description:
        "The Intel Comet Lake-S release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
    buttonColor: AppColors.kSilverColor,
    rating: "4.2",

  ),
  RecentBlogsModel(
    genre: "Comics",
    title: "iPhone 15 Pro is made of Titanium",
    time: "2h ago",
    views: "5.4k",
    image: ImageAssets.kProduct3,
    authorImage: ImageAssets.kPerson3,
    author: "James Bolton",
    description:
        "The iPhone 15 Pro release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
    buttonColor: AppColors.kTitaniumColor,
    rating: "4.4",

  ),
];
