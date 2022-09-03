import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      color: PortfolioColors.purpleFive,
    );
  }
}
