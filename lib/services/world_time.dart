import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location; //location
  String? time; //time of that location
  String? flag; //url to an asset flag icon
  String? url; //location url for api end point
  bool isDaytime = false;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];

      DateTime now = DateTime.parse(datetime);

      isDaytime = (now.hour > 6 && now.hour < 18) ? true : false;
      time = DateFormat.jm().format(now);
    } catch (error) {
      print('Caught Error : $error');
      time = "00 : 00";
    }
  }
}
