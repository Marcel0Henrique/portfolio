import 'package:flutter/material.dart';
import 'package:portfolio/src/components/logo.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'package:portfolio/src/widgets/navItem.dart';

class AppBarComponent extends StatelessWidget {
  final ScrollController controller;
  const AppBarComponent({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: PortfolioColors.purple,
      expandedHeight: 60,
      floating: true,
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
                controller: controller,
              ),
              NavItem(
                text: "Sobre",
                controller: controller,
              ),
              NavItem(
                text: "Portfolio",
                controller: controller,
              ),
              NavItem(
                text: "Contato",
                controller: controller,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
