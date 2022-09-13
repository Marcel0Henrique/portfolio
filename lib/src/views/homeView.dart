import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/components/abooutComponent.dart';
import 'package:portfolio/src/components/appBarComponent.dart';
import 'package:portfolio/src/components/contactComponent.dart';
import 'package:portfolio/src/components/footerComponent.dart';
import 'package:portfolio/src/components/homeComponent.dart';
import 'package:portfolio/src/components/portfolioComponent.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'package:portfolio/src/widgets/socialItem.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ScrollController controller = ScrollController();
  final itemKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: CustomScrollView(
              key: itemKey,
              slivers: [
                AppBarComponent(controller: controller),
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
          Positioned(
            left: 5,
            bottom: 0,
            child: Column(
              children: [
                SocialItem(
                  icon: FontAwesomeIcons.github,
                  link: "https://github.com/Marcel0Henrique",
                ),
                SocialItem(
                  icon: FontAwesomeIcons.linkedinIn,
                  link: "https://www.linkedin.com/in/marcel0-henrique/",
                ),
                SocialItem(
                  icon: FontAwesomeIcons.instagram,
                  link: "https://www.instagram.com/marcel0__henrique/",
                ),
                Container(
                  height: 140,
                  width: 3,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
