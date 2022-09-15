import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/src/controllers/homeController.dart';
import 'package:portfolio/src/models/gitHubModel.dart';
import 'package:portfolio/src/services/apiGitHub.dart';
import 'package:portfolio/src/views/homeView.dart';

final getIt = GetIt.instance;
void main() async {
  final teste = ApiGitHub();
  getIt.registerSingleton<HomeController>(HomeController());
  getIt.registerSingleton<GitHubModel>(GitHubModel());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "</Marcelo Henrique>",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeView(),
      },
    );
  }
}
