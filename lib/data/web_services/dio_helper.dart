


import 'package:dio/dio.dart';


class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://dummyjson.com/",
        receiveDataWhenStatusError: true,
      ),
    );
  }

//Firest call with web
  static Future<Response> getData({
    required String path,
  }) async {
    //path = 'products'
    return await dio.get(path);
  }
}