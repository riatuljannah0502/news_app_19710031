import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app_19710031/models/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();

  Future<List<Article>> getArticle() async {
    final queryParameter = {
      'country': 'us',
      'category': 'sports',
      'page': '1',
      'pageSize': '100',
      'source': '{}',
      'id': 'null',
      'keyword': 'get',
      'apiKey': 'a8c39205e71a45fca4ef030ca5b6ef17'
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameter);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.formJson(item)).toList();
    return articles;
  }
}
