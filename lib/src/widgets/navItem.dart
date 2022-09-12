import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class NavItem extends StatefulWidget {
  final String text;
  const NavItem({Key? key, required this.text}) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: Text(
        widget.text,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
          color: PortfolioColors.red,
          fontSize: 17,
        ),
      ),
      onHover: (event) {},
      child: Text(
        widget.text,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );
  }
}
