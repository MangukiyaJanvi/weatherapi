import 'package:flutter/foundation.dart';
import 'package:weatherapi/screens/homescreen/model/home_model.dart';
import 'package:weatherapi/utils/api_helper.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  String weblink = "https://www.accuweather.com/";
  WeatherModel? weatherModel;
  WebViewController? webViewController;
  var lat=21.1702;
  var lon=72.8311;

  void initstate() {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse(weblink));
  }
  void changelatlon(var lati,var long)
  {
    lat=lati;
    lon=long;
    notifyListeners();
  }

  Future<WeatherModel?> weatherJsonParsing({lat,lon}) async {
    ApiHelper apiHelper = ApiHelper();
    weatherModel = await apiHelper.weatherApiCall(lat: lat,lon: lon);
    return weatherModel;
  }
}
