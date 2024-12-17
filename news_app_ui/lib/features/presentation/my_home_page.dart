import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:news_app_ui/features/data/oop.dart';
import 'package:news_app_ui/methods/my_ap_bar.dart';
import 'package:news_app_ui/widgets/news_card.dart';
import 'package:news_app_ui/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldcolor,
        appBar: myAppBar(),
        body: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return NewsCard(
                index: index,
              );
            }),
        floatingActionButton: SearchWidget(),
      ),
    );
  }
}
