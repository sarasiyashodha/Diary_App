import 'dart:convert';
import 'package:http/http.dart';
import 'package:diary_app/models/exception_model.dart';

class ApiService {

  final String baseUrl = "http://app360dev-001-site17.atempurl.com/api";

  Future<void> sendException(ExceptionModel exception) async {
    try {
      final String endpoint = "$baseUrl/Exception";
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final String requestBody = jsonEncode(exception.toJson());

      final Response response =
      await post(Uri.parse(endpoint), headers: headers, body: requestBody);

      if (response.statusCode == 200) {
        print("Exception sent successfully!");
      } else {
        print("Failed to send exception. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error sending exception: $e");
    }
  }
}
