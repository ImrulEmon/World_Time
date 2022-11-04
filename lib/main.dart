import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:world_time/screens/choose_location.dart';
import 'package:world_time/screens/loading.dart';
import './screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'World Time',
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        //primaryColor: Colors.black,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
      },
    );
  }
}
