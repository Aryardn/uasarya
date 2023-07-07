import 'package:flutter/foundation.dart';
import 'package:uasarya/model/model_cuaca.dart';
import 'package:uasarya/service/service_cuaca.dart';
import 'package:flutter/cupertino.dart';

class ProviderCuaca extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  ServiceCuaca serviceCuaca = ServiceCuaca();
  ModelCuaca modelCuaca = ModelCuaca();

  get formattedDate => null;

  showWeatherData() async {
    modelCuaca = await serviceCuaca.getCurrentWeather(cityNameText.text);
    if (kDebugMode) {
      print(modelCuaca.weather?.first.main);
    }
    notifyListeners();
  }
}