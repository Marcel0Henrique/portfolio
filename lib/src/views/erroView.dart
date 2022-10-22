import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/src/controllers/errorController.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'package:portfolio/src/widgets/customButton.dart';

class ErroView extends StatelessWidget {
  const ErroView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ErrorController();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: PortfolioColors.gradient,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Ops! parece que temos um problema",
                style: GoogleFonts.montserrat(
                  fontSize: MediaQuery.of(context).size.height * 0.06,
                  color: PortfolioColors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomButtom(
              text: "Recarregar",
              onPressed: controller.reloadPage,
            )
          ],
        ),
      ),
    );
  }
}
