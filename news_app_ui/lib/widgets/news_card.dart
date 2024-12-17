import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/text_styles/text_styles.dart';
import 'package:news_app_ui/features/data/oop.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(
            newsList[index].image,
            height: 130,
            width: 115,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    newsList[index].data,
                    style: NewsTextStyle,
                  ),
                  Text(
                    newsList[index].text,
                    style: NewsTextStyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
