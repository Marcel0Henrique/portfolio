import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/src/controllers/homeController.dart';
import 'package:portfolio/src/views/homeView.dart';

final getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<HomeController>(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "</MH>",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeView(),
      },
    );
  }
}
