import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app_1_ui/constans.dart/app_text_styles.dart';
import 'package:weather_app_1_ui/constans.dart/liner_gradient.dart';
import 'package:weather_app_1_ui/widgets/slieder_view.dart';
import 'package:weather_app_1_ui/widgets/weather_days_card.dart';
import 'package:weather_app_1_ui/widgets/weatherviewbanner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = "Maalymatjuktoluudo...";
  String sityName = "";
  String countryN = "";
  String weatherIcon = "";
  String mainWeather = "";
  double windweather = 0.0;
  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=osh,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);

      final data = jsonDecode(response.body);
      final name = data["name"] ?? "Белгисиз шар";
      final temp = data["main"]["temp"] ?? 0.0;
      final countryName = data["sys"]["country"] ?? "";
      final icon = data["weather"][0]["icon"] ?? "";
      final main = data["weather"][0]["main"] ?? "Белгисиз аба-ырайы";
      final wind = (data["wind"]["speed"] ?? 0.0).toDouble();

      final withKelvin = temp - 273.15;

      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        sityName = name;
        countryN = countryName;
        mainWeather = main;
        weatherIcon = icon;
        windweather = wind;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherFun();
  }

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
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text('$sityName,\n$countryN',
                        style: AppTextStyles.LacotionStyle),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Tue, Jun 30', style: AppTextStyles.DateStyle),
                  ),
                  Row(
                    children: [
                      Image.network(
                        weatherIcon.isNotEmpty
                            ? 'https://openweathermap.org/img/wn/$weatherIcon@4x.png'
                            : 'assets/cludy.png',
                        width: 200.16,
                        height: 250.98,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                (weatherInfo),
                                style: AppTextStyles.Gradus,
                              ),
                              const Text(
                                '°C',
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          ),
                          Text(
                            mainWeather,
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
                  WeatherViewbanner(
                    image: 'assets/icons/Vector.png',
                    text: 'Wind',
                    text1: "${windweather.toString()} km/h",
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
                  text2: '$weatherInfo°',
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
