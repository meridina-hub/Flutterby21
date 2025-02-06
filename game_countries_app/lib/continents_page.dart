import 'package:flutter/material.dart';
import 'package:game_countries_app/countries_page.dart';
import 'package:game_countries_app/features/app_text.dart';
import 'package:game_countries_app/features/app_texts.dart';
import 'package:game_countries_app/features/model.dart';
import 'package:game_countries_app/theme/app_bcg_color.dart';

class ContinentsPage extends StatelessWidget {
  const ContinentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
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
                    image: a[index].image,
                    onTap: () {
                      if (a[index].text == "Asia") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CountriesPage();
                        }));
                      } else {
                        null;
                      }
                    },
                    color: Color(0xfff6f6f6),
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
    required this.image,
    this.onTap,
    required this.color,
  });
  final String text;
  final String image;
  final void Function()? onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(8),
          color: color,
          child: Center(
            child: Column(
              children: [
                appText.title(text),
                Image.asset(
                  image,
                  width: 120,
                ),
              ],
            ),
          )),
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
