import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/src/styles/portfolioColors.dart';
import 'dart:js' as js;

class SocialItem extends StatefulWidget {
  final IconData icon;
  final String link;
  SocialItem({Key? key, required this.icon, required this.link})
      : super(key: key);

  @override
  State<SocialItem> createState() => _SocialItemState();
}

class _SocialItemState extends State<SocialItem> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      hoverChild: IconButton(
        onPressed: () {
          js.context.callMethod('open', [widget.link]);
        },
        icon: FaIcon(
          widget.icon,
          color: PortfolioColors.red,
        ),
      ),
      onHover: (event) {},
      child: IconButton(
        onPressed: () {},
        icon: FaIcon(
          widget.icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
