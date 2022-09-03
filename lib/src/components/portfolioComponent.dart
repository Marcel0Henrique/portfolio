import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class PortfolioComponent extends StatelessWidget {
  const PortfolioComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: PortfolioColors.purpleFour,
    );
  }
}
