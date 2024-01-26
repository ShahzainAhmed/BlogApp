import 'package:blog_app/resources/assets/image_assets.dart';
import 'package:blog_app/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsModel {
  final String title;
  final String smallTitle;
  final String rating;
  final String time;
  final String views;
  final String authorImage;
  final String author;
  final String blogImage;
  final String description;
  final Color buttonColor;

  DetailsModel({
    required this.title,
    required this.rating,
    required this.time,
    required this.views,
    required this.authorImage,
    required this.author,
    required this.blogImage,
    required this.description,
    required this.buttonColor,
    required this.smallTitle,
  });
}

List detailsList = [
  DetailsModel(
    title: "Cyberpunk 2077 release date, price, trailers, gameplay and news",
    smallTitle: "Cyberpunk 2077 release date and news.",
    rating: "4.5",
    time: "43 sec ago",
    views: "7k views",
    authorImage: ImageAssets.kPerson1,
    author: "Samsad Rashid",
    blogImage: ImageAssets.kBlog1,
    buttonColor: AppColors.kOrangeColor,
    description:
        "The Cyberpunk 2077 release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
  ),
  DetailsModel(
    title: "GTA VI release date, price, trailers, gameplay and news",
    smallTitle: "GTA VI release date and news.",
    rating: "4.8",
    time: "30 sec ago",
    views: "15k views",
    authorImage: ImageAssets.kPerson2,
    author: "Emma John",
    blogImage: ImageAssets.kBlog2,
    buttonColor: AppColors.kPinkColor,
    description:
        "The Grand Theft Auto VI release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
  ),
  DetailsModel(
    title: "Spiderman 2 release date, price, trailers, gameplay and news",
    smallTitle: "Spiderman 2 release date and news.",
    rating: "4.3",
    time: "29 sec ago",
    views: "9k views",
    authorImage: ImageAssets.kPerson3,
    author: "James Bolton",
    blogImage: ImageAssets.kBlog3,
    buttonColor: AppColors.kGreyColor,
    description:
        "The Spiderman 2 release date was delayed to September 17, meaning it won't be hacking into our digital lives this April after all. The game is complete, says developed CD Projekt Red, but the extra time allows for more delay.",
  ),
];
