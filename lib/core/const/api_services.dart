import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  Future<http.Response> get({
    required String endPoint,
    Map<String, String>? header,
  }) async {
    final response = await http.get(
      Uri.parse(endPoint),
      headers:
          header ??
          {'Content-Type': 'application/json', 'Accept': 'application/json'},
    );
    return response;
  }

  Future<http.Response> post({
    required String endPoint,
    required Map<String, dynamic> body,
    Map<String, String>? header,
  }) async {
    final response = await http.post(
      Uri.parse(endPoint),
      headers:
          header ??
          {'Content-Type': 'application/json', 'Accept': 'application/json'},
      body: jsonEncode(body),
    );
    return response;
  }
}
