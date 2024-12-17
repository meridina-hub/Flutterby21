import 'package:flutter/material.dart';

class News {
  const News({required this.data, required this.image, required this.text});
  final String image;
  final String data;
  final String text;
}

News news1 = const News(
  image: 'assets/Rectangle (18).png',
  data: '1 Feb, 2020',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
News news2 = const News(
  image: 'assets/Rectangle (9).png',
  data: '5 /27 /15',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
News news3 = const News(
  image: 'assets/Rectangle (13).png',
  data: '1/15/12',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
News news4 = const News(
  image: 'assets/Rectangle (17).png',
  data: '21 Sep, 2017',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
News news5 = const News(
  image: 'assets/Rectangle (15).png',
  data: '8 Sep, 2020',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
News news6 = const News(
  image: 'assets/Rectangle (17).png',
  data: '21 Sep, 2017',
  text:
      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
);
final List<News> newsList = [news1, news2, news3, news4, news5, news6];
