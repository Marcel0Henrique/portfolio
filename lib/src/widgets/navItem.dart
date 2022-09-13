import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class NavItem extends StatefulWidget {
  final String text;
  final ScrollController controller;
  const NavItem({Key? key, required this.text, required this.controller})
      : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: TextButton(
        onPressed: () {},
        child: Text(
          widget.text,
          style: GoogleFonts.montserrat(
            color: PortfolioColors.red,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
      onHover: (event) {},
      child: TextButton(
        onPressed: () {},
        child: Text(
          widget.text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
