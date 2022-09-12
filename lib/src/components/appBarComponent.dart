import 'package:flutter/material.dart';
import 'package:portfolio/src/components/logo.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'package:portfolio/src/widgets/navItem.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: PortfolioColors.purple,
      expandedHeight: 60,
      title: LogoAnimation(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Wrap(
            spacing: 100,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: const [
              NavItem(text: "Inicio"),
              NavItem(text: "Sobre"),
              NavItem(text: "Portfolio"),
              NavItem(text: "Contato"),
            ],
          ),
        ),
      ],
    );
  }
}
