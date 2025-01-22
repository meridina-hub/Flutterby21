import 'package:dio/dio.dart';
import 'package:news_app_ui/features/data/api.dart';
import 'package:news_app_ui/features/model/news_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<NewsModel?> fetchData() async {
    final response = await dio.get(Api.data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = response.data;
      return NewsModel.fromJson(data);
    }
    return null;
  }
}
