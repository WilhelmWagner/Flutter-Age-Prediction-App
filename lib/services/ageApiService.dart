
import 'package:http/http.dart' as http;
import 'dart:convert';

class AgeApiService {
  Future<Map<String, dynamic>> fetchAge(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load age data');
    }
  }
}