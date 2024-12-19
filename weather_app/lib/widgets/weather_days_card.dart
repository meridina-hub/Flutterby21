import 'package:flutter/material.dart';

class WeatherDaysCard extends StatelessWidget {
  const WeatherDaysCard({
    super.key,
    required this.text1,
    required this.text2,
    required this.image,
  });
  final String text1, text2, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.25),
      width: 55.19,
      height: 90.98,
      decoration: BoxDecoration(
          color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(34.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(fontSize: 12.07, fontWeight: FontWeight.w400),
          ),
          Image.asset(
            image,
            width: 41.39,
            height: 41.39,
          ),
          Text(text2,
              style: TextStyle(fontSize: 12.07, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
