import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response response =
  //       await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);
  // }

  String url = 'http://worldtimeapi.org/api/timezone/Europe/London';

  void getTime() async {
    Response response = await get(Uri.parse(url));
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];

    DateTime now = DateTime.parse(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    //getData();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0),
        child: Center(child: Text('Loading...')),
      ),
    );
  }
}
