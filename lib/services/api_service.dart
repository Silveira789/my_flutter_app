import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);

      if (jsonData.isEmpty) return [];

      return jsonData.map((item) => Post.fromJson(item)).toList();
    } else {
      throw Exception('Erro ao carregar os dados');
    }
  }
}
