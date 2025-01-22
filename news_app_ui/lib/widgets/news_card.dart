import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/text_styles/text_styles.dart';
import 'package:news_app_ui/features/data/oop.dart';
import 'package:news_app_ui/features/model/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.index,
    required this.data,
  });
  final int index;
  final List<Articles>? data;
  @override
  Widget build(BuildContext context) {
    final news = data?[index];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.network(
            news?.urlToImage ?? "",
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
                    news?.title ?? "bez authora",
                    style: NewsTextStyle,
                  ),
                  Text(
                    news?.description ?? "bez description",
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
