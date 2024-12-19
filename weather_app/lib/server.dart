import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherAPI {
  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final temp = data["main"]["temp"];
    } else {
      print(response.statusCode);
    }
  }
}
