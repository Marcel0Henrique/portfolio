import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/src/controllers/homeController.dart';
import 'package:portfolio/src/models/gitHubModel.dart';
import 'package:portfolio/src/services/apiGitHub.dart';
import 'package:portfolio/src/views/erroView.dart';
import 'package:portfolio/src/views/homeView.dart';

final getIt = GetIt.instance;
void main() async {
  try {
    final github = await ApiGitHub().getData();

    getIt.registerSingleton<HomeController>(HomeController());
    getIt.registerSingleton<GitHubModel>(GitHubModel.fromJson(github));

    runApp(const MyApp());
  } catch (e) {
    runApp(const MyAppErro());
  }
}

//* Aplicação principal
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      title: "</Marcelo Henrique>",
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeView(),
      },
    );
  }
}

//* Pagina caso ocorra algum erro na aplicação ou algum problema na API
class MyAppErro extends StatelessWidget {
  const MyAppErro({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "</Marcelo Henrique> - Error",
      home: ErroView(),
    );
  }
}
