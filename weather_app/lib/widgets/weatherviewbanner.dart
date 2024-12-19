import 'package:flutter/material.dart';

class WeatherViewbanner extends StatelessWidget {
  const WeatherViewbanner({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
  });
  final String image;
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.31),
      child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.40),
              borderRadius: BorderRadius.circular(17.25),
              border: Border.all(color: Colors.white, width: 0.88)),
          child: Padding(
            padding: const EdgeInsets.only(left: 18.97, right: 48.29),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 37.94,
                      height: 37.94,
                      decoration: BoxDecoration(
                          color: Color(0XFFFFFFFFE5),
                          borderRadius: BorderRadius.circular(13.8)),
                      child: Image.asset(
                        image,
                      ),
                    ),
                    SizedBox(
                      width: 11.47,
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          fontSize: 12.7,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff303345)),
                    ),
                  ],
                ),
                Text(
                  text1,
                  style: TextStyle(
                      fontSize: 12.7,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff303345)),
                ),
              ],
            ),
          )),
    );
  }
}
