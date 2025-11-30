import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:responsive_fruits/core/utils/helper/widgets/user_message.dart';

class ApiServices {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://fruits.sys-web.net/api/';

  Future<dynamic> getData(String endpoint) async {
    try {
      Response response = await _dio.get(_baseUrl + endpoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.unknown,
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  Future<dynamic> postData({
    required String endpoint,
    Map<String, dynamic>? data,
    String? token,
    Map<String, String>? header,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json',
    };
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    if (header != null) {
      headers.addAll(header);
    }
    try {
      Response response = await _dio.post(
        (_baseUrl + endpoint),
        data: data,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.unknown,
        );
      }
    } catch (e) {
      rethrow;
    }
  } //////////////////////////////////////////////////////////////////////////////

  Future<dynamic> updatetData({
    required String endpoint,
    Map<String, dynamic>? data,
    String? token,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
      'Accept': '*/*',
    };
    if (token != null) {
      headers.addAll({"Authorization": "Bearer $token"});
    }
    try {
      Response response = await _dio.put(
        (_baseUrl + endpoint),
        data: data,
        options: Options(headers: headers),
      );
      if (response.statusCode == 200) {
        showUserMessage(
          message: "updated sucssesfully",
          backgroundColor: Colors.green,
        );
        Map<String, dynamic> responseData =
            response.data as Map<String, dynamic>;

        return responseData;
      } else {
        throw DioException(
          requestOptions: RequestOptions(),
          type: DioExceptionType.unknown,
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
