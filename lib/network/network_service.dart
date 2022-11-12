import 'package:countryapp/network/network_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

enum RequestType { get, put, post }

class NetworkService {
  const NetworkService._();

  static Map<String, String> _getHeaders() => {
        'Content-Type': 'application/json',
      };

  static Future<http.Response>? _createRequest({
    required RequestType requestType,
    required Uri uri,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) {
    if (requestType == RequestType.get) {
      return http.get(uri, headers: headers);
    }
    return null;
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String urll,
    Map<String, dynamic>? body,
    Map<String, String>? queryParam,
  }) async {
    try {
      final header = _getHeaders();
      final url = NetworkHelper.concatUrlQP(urll, queryParam);

      final response = await _createRequest(
          requestType: requestType,
          uri: Uri.parse(url),
          headers: header,
          body: body);

      debugPrint('Response : ${response?.headers}');

      return response;
    } catch (e) {
      debugPrint('Error - $e');
      return null;
    }
  }
}
