import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testapi/feature/home/data/model/post_model.dart';

class PostService {
  Future<List<PostModel>> getPost() async {
    
      var response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = json.decode(response.body);
        List<PostModel> listPosts =
            jsonData.map((item) => PostModel.fromjson(item)).toList();
        return listPosts;
      } else {
        throw Exception('Failed to load posts: ${response.statusCode}');
      }
   
  }
}
