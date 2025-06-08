import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';
//https://10.255.255.1
//final response = await http.get(Uri.parse('$baseUrl/postss'));

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await http
          .get(Uri.parse('$baseUrl/posts'))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((item) => Post.fromJson(item)).toList();
      } else {
        throw Exception('Erro: código ${response.statusCode}');
      }
    } on http.ClientException {
      throw Exception('Erro de conexão com a internet.');
    } on TimeoutException {
      throw Exception('Tempo de resposta excedido.');
    } catch (e) {
      throw Exception('Erro inesperado: $e');
    }
  }
}
