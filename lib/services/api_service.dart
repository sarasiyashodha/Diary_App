import 'dart:convert';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:http/http.dart';
import 'package:diary_app/models/exception_model.dart';

class ApiService {

  final String baseUrl = "http://app360dev-001-site17.atempurl.com/api";

  Future<void> sendException(ExceptionModel exception) async {
    try {
      try{
        final androidInfo = await DeviceInfoPlugin().androidInfo;
        final deviceId = androidInfo.id;

        exception.deviceId = deviceId;
        print(deviceId);

      }
      catch(e){
        print("Error of getting device id: $e");
      }
      final String endpoint = "$baseUrl/Exception";

      final Map<String, String> headers = {
        'Content-Type': 'application/json'
      };

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
