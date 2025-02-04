import 'package:api_integration/models/posts.dart';
import 'package:http/http.dart' as http;
import 'post_model.dart';

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  // Fetch Posts (GET Request)
  Future<List<Posts>> fetchPosts() async {
    final response = await http.get(Uri.parse("$baseUrl/posts"));

    if (response.statusCode == 200) {
      return postsFromJson(response.body); // Use postFromJson from post_model.dart
    } else {
      throw Exception("Failed to load posts");
    }
  }
}
