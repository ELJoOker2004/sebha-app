import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sebha_app2/main/timepraymodel.dart';

class Timepray {
  static getTimePray() async {
    var Url = Uri.parse(
        "https://muslimsalat.com/cairo/daily.json?key=2d85d887336309eb0b1c1827b20ca744");
    var response = await http.get(Url);

    var responsebody = jsonDecode(response.body)["items"][0];
    TimePrayModel model = TimePrayModel(date_for: responsebody["date_for"],
        fajr: responsebody["fajr"],
        shurooq: responsebody["shurooq"],
        dhuhr: responsebody["dhuhr"],
        asr: responsebody["asr"],
        maghrib: responsebody["maghrib"],
        isha: responsebody["isha"]);

    print("${responsebody}");
    return model;
  }
}