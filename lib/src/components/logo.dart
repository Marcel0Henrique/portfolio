import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class Logo extends StatefulWidget {
  Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "<",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Text(
              "/",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            AnimatedTextKit(
              pause: const Duration(minutes: 1),
              animatedTexts: [
                TypewriterAnimatedText(
                  'Marcelo Henrique',
                  speed: const Duration(milliseconds: 130),
                  textStyle: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold, color: PortfolioColors.red),
                ),
              ],
            ),
            const Text(
              ">",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      onHover: (event) {},
      child: RichText(
        text: TextSpan(
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          children: [
            const TextSpan(text: "</"),
            TextSpan(
              style: GoogleFonts.montserrat(
                color: PortfolioColors.red,
                fontWeight: FontWeight.bold,
              ),
              text: "M",
            ),
            TextSpan(
              style: GoogleFonts.montserrat(
                color: PortfolioColors.red,
                fontWeight: FontWeight.bold,
              ),
              text: "H",
            ),
            TextSpan(
              text: ">",
            )
          ],
        ),
      ),
    );
  }
}
