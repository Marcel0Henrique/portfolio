import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class ContactComponent extends StatelessWidget {
  const ContactComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: PortfolioColors.purpleSix,
    );
  }
}
