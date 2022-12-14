import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';

class NavItem extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  const NavItem({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: TextButton(
        onPressed: widget.onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
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
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
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
