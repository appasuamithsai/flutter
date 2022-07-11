import 'dart:convert';
import 'dart:core';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String url;
  late String time;
  late String flag;
  late bool isDayTime;

  WorldTime({required this.location, required this.url, required this.flag});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map map = jsonDecode(response.body);
      String datetime = map['datetime'];
      String offset = map['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    } catch (e) {
      print("Error !!! $e");
      time = "could not get Time...";
    }
  }
}
