import 'package:flutter/material.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.blue,
      expandedHeight: 60,
      title: RichText(
        text: TextSpan(
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          children: [
            const TextSpan(text: "</"),
            TextSpan(
                style: TextStyle(color: PortfolioColors.red), text: "Marcelo"),
            const TextSpan(text: ">")
          ],
        ),
      ),
    );
  }
}
