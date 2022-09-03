import 'package:flutter/material.dart';
import 'package:portfolio/src/components/abooutComponent.dart';
import 'package:portfolio/src/components/contactComponent.dart';
import 'package:portfolio/src/components/footerComponent.dart';
import 'package:portfolio/src/components/homeComponent.dart';
import 'package:portfolio/src/components/portfolioComponent.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HomeComponent(),
              AboutComponent(),
              PortfolioComponent(),
              ContactComponent(),
              FooterComponent()
            ],
          ),
        ),
      ),
    );
  }
}
