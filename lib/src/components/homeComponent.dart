import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: PortfolioColors.purple,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}
