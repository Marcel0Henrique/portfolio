import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/src/views/homeView.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {'/home': (context) => HomeView()},
    );
  }
}
