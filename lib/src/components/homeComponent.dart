import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: PortfolioColors.gradient,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Olá a todos",
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                    children: [
                      TextSpan(
                        text: "Meu nome é ",
                        style: GoogleFonts.montserrat(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        style: GoogleFonts.montserrat(
                          color: PortfolioColors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 42,
                        ),
                        text: "Marcelo Henrique",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Eu sou um ",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    DefaultTextStyle(
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: PortfolioColors.red,
                        fontSize: 32,
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        displayFullTextOnTap: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            "Desenvolvedor Mobile",
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            "Administrador",
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            "Amante de Livros",
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Lottie.asset(
              height: 550,
              width: 550,
              reverse: true,
              'assets/animations/personInComputer.json',
            )
          ],
        ),
      ),
    );
  }
}
