import 'package:dio/dio.dart';
import 'package:newsapp/Models/news_model.dart';

class NewsRepo {
  final Dio dio = Dio();

  Future <List<Article>>getNews() async {

    final response = await dio.get('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=95d39f5147a247b2851094bfdfa24cd2');
    
    final NewsModel = NewsModels.fromJson(response.data);

    final newsArticel=NewsModel.articles;

    return newsArticel;



  }

}

