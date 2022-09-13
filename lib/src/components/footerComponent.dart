import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      color: PortfolioColors.purpleFive,
      child: Center(
        child: DefaultTextStyle(
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: 5,
                children: [
                  Text("Criando por"),
                  Text(
                    "Marcelo Henrique",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: PortfolioColors.red,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Wrap(
                spacing: 5,
                children: [
                  Text("Desenvolvido utilizando"),
                  Text(
                    "Flutter",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  color: Colors.white,
                ),
              ),
              Text(
                "© 2020 Marcelo Henrique",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: PortfolioColors.red,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
