import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    final DateFormat date = DateFormat();
    final news = data?[index];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 130,
                height: 135,
                child: CachedNetworkImage(
                  imageUrl: news?.urlToImage ?? "",
                  placeholder: (context, url) =>
                      CircularProgressIndicator.adaptive(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news?.publishedAt != null
                            ? DateFormat.MMMEd()
                                .add_jm()
                                .format(DateTime.parse(news!.publishedAt!))
                            : 'Unknown Date',
                        style: NewsTextStyle,
                      ),
                      Text(
                        news?.title ?? "bez title",
                        style: NewsTextStyle,
                      ),
                      Text(
                        news?.url ?? "bez url",
                        style: newsUrlTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
