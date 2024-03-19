import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: "https://api.aiapp.link/api",
    contentType: "application/json; charset=utf-8",
    validateStatus: (status) {
      return true;
    },
  ),
);

// const secureStorage = FlutterSecureStorage();
