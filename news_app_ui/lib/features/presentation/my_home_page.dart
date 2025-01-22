import 'package:flutter/material.dart';
import 'package:news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:news_app_ui/features/data/oop.dart';
import 'package:news_app_ui/features/data/server.dart';
import 'package:news_app_ui/features/model/news_model.dart';
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
        body: FutureBuilder<NewsModel?>(
          future: NewsService().fetchData(),
          builder: (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: const CircularProgressIndicator.adaptive());
            } else if (snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: Text('Сервер не работает'),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data?.articles!.length,
                  itemBuilder: (context, index) {
                    final data = snapshot.data?.articles;
                    return NewsCard(index: index, data: data);
                  });
            }
            return Center(
              child: Text('belgisiz abal'),
            );
          },
        ),
        floatingActionButton: SearchWidget(),
      ),
    );
  }
}
