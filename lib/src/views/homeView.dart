import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/src/components/abooutComponent.dart';
import 'package:portfolio/src/components/contactComponent.dart';
import 'package:portfolio/src/components/footerComponent.dart';
import 'package:portfolio/src/components/homeComponent.dart';
import 'package:portfolio/src/components/logo.dart';
import 'package:portfolio/src/components/portfolioComponent.dart';
import 'package:portfolio/src/controllers/homeController.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'package:portfolio/src/widgets/navItem.dart';
import 'package:portfolio/src/widgets/socialItem.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PortfolioColors.purple,
        title: Logo(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Wrap(
              spacing: 100,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                NavItem(
                  text: "Inicio",
                  onPressed: () => controller.toHome(),
                ),
                NavItem(
                  text: "Sobre",
                  onPressed: () => controller.toAbout(),
                ),
                NavItem(
                  text: "Portfolio",
                  onPressed: () => controller.toPortolio(),
                ),
                NavItem(
                  text: "Contato",
                  onPressed: () => controller.toContact(),
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: InteractiveScrollViewer(
              scrollToId: controller.scrollToId,
              children: [
                ScrollContent(
                  id: 'home',
                  child: HomeComponent(),
                ),
                ScrollContent(
                  id: 'about',
                  child: AboutComponent(),
                ),
                ScrollContent(
                  id: 'portfolio',
                  child: PortfolioComponent(),
                ),
                ScrollContent(
                  id: 'contact',
                  child: ContactComponent(),
                ),
                ScrollContent(
                  id: 'footer',
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: AlignmentDirectional.topCenter,
                    children: [
                      FooterComponent(),
                      Positioned(
                        top: -15,
                        child: FloatingActionButton(
                          backgroundColor: PortfolioColors.red,
                          child: const FaIcon(
                            FontAwesomeIcons.arrowUp,
                            size: 30,
                          ),
                          onPressed: () => controller.toHome(),
                        ),
                      )
                    ],
                  ),
                ),
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
