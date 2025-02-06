import 'package:flutter/material.dart';
import 'package:game_countries_app/continents_page.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: AssetsImage(
            image: 'assets/images/back.png',
            size: 40,
          ),
          title: Row(
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
                (index) => AssetsImage(
                  image: 'assets/images/heart.png',
                  size: 40,
                ),
              ),
            ),
            AssetsImage(
              image: 'assets/images/settings.png',
              size: 40,
            )
          ],
        ),
        body: Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            Text('Seoul'),
            AssetsImage(
                image: 'assets/countries/images.jpeg', size: double.infinity),
            Expanded(
              child: GridView.count(
                  primary: false,
                  padding: EdgeInsets.only(top: 20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: List.generate(4, (index) {
                    return CardWidget(
                      onTap: () {},
                      text: 'l',
                      image: 'assets/countries/images.jpeg',
                      color: Color(0xfff6f6f6),
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
