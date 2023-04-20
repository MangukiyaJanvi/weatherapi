import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapi/screens/homescreen/model/home_model.dart';

class ApiHelper {
  WeatherModel? weatherModel;

  Future<WeatherModel?> weatherApiCall({var lat, var lon}) async {
    String link =
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=8ceff50a3c3f77115ec630a990da1e6e";
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    print(json);
    weatherModel = WeatherModel.fromJson(json);
    return weatherModel;
  }
}
