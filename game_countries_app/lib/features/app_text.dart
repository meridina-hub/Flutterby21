import 'package:flutter/material.dart';

class AppText {
  //Бул виджет кайтаруучу метод header тибиндеги текст учун жооптуу
  Widget header(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black),
    );
  }

  //Бул виджет кайтаруучу метод title тибиндеги текст учун жооптуу
  Widget title(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black),
    );
  }
}

AppText appText = AppText();
