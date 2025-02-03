import 'package:flutter/material.dart';
import 'package:game_countries_app/features/app_text.dart';
import 'package:game_countries_app/features/app_texts.dart';
import 'package:game_countries_app/features/model.dart';

class ContinentsPage extends StatelessWidget {
  const ContinentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _my_AppBar(),
      body: Column(
        children: [
          Line(),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  return CardWidget(
                    text: a[index].text,
                  );
                })),
          )
        ],
      ),
    );
  }

  AppBar _my_AppBar() {
    return AppBar(
      title: appText.header(appTexts.titleText),
      actions: const [
        Icon(
          Icons.settings,
          color: Colors.blueAccent,
        ),
        Icon(
          Icons.more_vert,
          color: Colors.black,
        )
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.teal[400],
      child: appText.title(text),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black,
      indent: 20,
      endIndent: 20,
    );
  }
}
