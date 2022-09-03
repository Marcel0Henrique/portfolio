import 'package:flutter/material.dart';
import 'package:portfolio/src/components/abooutComponent.dart';
import 'package:portfolio/src/components/appBarComponent.dart';
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
    return const Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            AppBarComponent(),
            SliverToBoxAdapter(
              child: HomeComponent(),
            ),
            SliverToBoxAdapter(
              child: AboutComponent(),
            ),
            SliverToBoxAdapter(
              child: PortfolioComponent(),
            ),
            SliverToBoxAdapter(
              child: ContactComponent(),
            ),
            SliverToBoxAdapter(
              child: FooterComponent(),
            )
          ],
        ),
      ),
    );
  }
}
