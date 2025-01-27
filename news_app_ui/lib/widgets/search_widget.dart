import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:news_app_ui/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.black,
                spreadRadius: 1,
                offset: Offset(5, 5))
          ]),
      child: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.orangeColor,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: IconColors.searchColor,
              size: 30,
            ),
          )),
    );
  }
}
