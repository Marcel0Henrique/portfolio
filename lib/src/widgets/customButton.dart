import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class CustomButtom extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  CustomButtom({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  State<CustomButtom> createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
        child: Material(
          color: Colors.transparent,
          elevation: 15,
          shadowColor: PortfolioColors.red,
          child: Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: PortfolioColors.buttomHoverGradient,
                )),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      onHover: (event) {},
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        child: Material(
          color: Colors.transparent,
          elevation: 15,
          shadowColor: Colors.black,
          child: Container(
            height: 45,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: PortfolioColors.buttomGradient,
                )),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.text,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
