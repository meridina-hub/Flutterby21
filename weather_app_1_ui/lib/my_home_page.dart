import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app_1_ui/constans.dart/app_text_styles.dart';
import 'package:weather_app_1_ui/constans.dart/liner_gradient.dart';
import 'package:weather_app_1_ui/widgets/slieder_view.dart';
import 'package:weather_app_1_ui/widgets/weather_days_card.dart';
import 'package:weather_app_1_ui/widgets/weatherviewbanner.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinerGradient.liner,
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 31.5, vertical: 20.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/icons/icon.png',
                        width: 41.39,
                        height: 41.39,
                      ),
                      Image.asset(
                        'assets/icons/icon (1).png',
                        width: 41.39,
                        height: 41.39,
                      ),
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Bishkek,\nKyrgyzstan',
                        style: AppTextStyles.LacotionStyle),
                  ),
                  const Align(
                      alignment: Alignment.topLeft,
                      child:
                          Text('Tue, Jun 30', style: AppTextStyles.DateStyle)),
                  Row(
                    children: [
                      Image.asset(
                        'assets/cludy.png',
                        width: 200.16,
                        height: 250.98,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '19',
                                style: AppTextStyles.Gradus,
                              ),
                              Text(
                                '°C',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            'Rainy',
                            style: AppTextStyles.Rainy,
                          ),
                        ],
                      )
                    ],
                  ),
                  const WeatherViewbanner(
                    image: 'assets/icons/umbrella.png',
                    text: 'RainyFall',
                    text1: '3cm',
                  ),
                  const WeatherViewbanner(
                    image: 'assets/icons/Vector.png',
                    text: 'Wind',
                    text1: '19km/h',
                  ),
                  const WeatherViewbanner(
                    image: 'assets/icons/Rectangle.png',
                    text: 'Humidity',
                    text1: '64%',
                  ),
                  const SliederView(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinerGradient.liner,
          ),
          child: SizedBox(
            height: 90.98,
            width: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return WeatherDaysCard(
                  text1: 'now',
                  image: 'assets/icons/icon (2).png',
                  text2: '19°',
                );
              },
              itemCount: 10,
            ),
          ),
        ),
      ),
    );
  }
}
