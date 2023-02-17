import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sebha_app2/main/azkarmodel.dart';

class sbahController {
  static getAzkarController() async {
    List<AzkarModel> model = [];
    var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/azkar_sabah.json");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["content"];
    for (var i in responsebody) {
      model.add(AzkarModel(
          zekr: i["zekr"], repeat: i["repeat"],bless: i["bless"]));
      return model;
    }
  }
}
class msaaController {
  static getAzkarController() async {
    List<AzkarModel> model = [];
    var url = Uri.parse("https://ahegazy.github.io/muslimKit/json/azkar_massa.json");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)["content"];
    for (var i in responsebody) {
      model.add(AzkarModel(
          zekr: i["zekr"], repeat: i["repeat"], bless: i["bless"]));
      return model;
    }
  }
}
