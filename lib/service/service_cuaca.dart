import 'package:flutter/foundation.dart';
import 'package:uasarya/model/model_cuaca.dart';
import 'package:dio/dio.dart';

class ServiceCuaca {

  final dio = Dio();

  Future<ModelCuaca> getCurrentWeather(String cityName) async {
    // HTTP Request
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=de28242e4a143c82b1968a4d7aed8314&units=metric');
    if (kDebugMode) {
      print(response.requestOptions.path);
    }
    // Convert
    return ModelCuaca.fromJson(response.data);
  }
}
