import 'package:flutter/material.dart';
import 'package:game_countries_app/continents_page.dart';

import 'package:game_countries_app/features/model/countries_model.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const AssetsImage(
            image: 'assets/images/back.png',
            size: 40,
          ),
          title: const Row(
            children: [
              AssetsImage(
                image: 'assets/images/bulb.png',
                size: 40,
              ),
              Text('43'),
              SizedBox(
                width: 50,
              ),
              Text('14'),
            ],
          ),
          actions: [
            Row(
              children: List.generate(
                3,
                (index) => const AssetsImage(
                  image: 'assets/images/heart.png',
                  size: 40,
                ),
              ),
            ),
            const AssetsImage(
              image: 'assets/images/settings.png',
              size: 40,
            )
          ],
        ),
        body: Column(
          children: [
            const LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            Text(tests[0].question),
            AssetsImage(image: tests[0].capitalImage, size: double.infinity),
            Expanded(
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return CardWidget(
                      onTap: () {
                        if (tests[0].answers[index].isTrue) {
                          showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('seoul'),
                                  content: const SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('tuura'),
                                        Text(''),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('approve'))
                                  ],
                                );
                              });
                          showDialog<void>(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('seoul'),
                                  content: const SingleChildScrollView(
                                    child: ListBody(
                                      children: <Widget>[
                                        Text('tuura emes'),
                                        Text(''),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(''))
                                  ],
                                );
                              });
                        }
                      },
                      text: tests[0].answers[index].answer,
                      image: 'assets/countries/images.jpeg',
                      color: const Color(0xfff6f6f6),
                    );
                  })),
            )
          ],
        ));
  }
}

class AssetsImage extends StatelessWidget {
  const AssetsImage({
    super.key,
    required this.image,
    required this.size,
  });
  final String image;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
    );
  }
}
