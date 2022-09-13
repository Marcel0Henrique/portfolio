import 'package:flutter/cupertino.dart';
import 'package:scroll_to_id/scroll_to_id.dart';

class HomeController {
  final _scrollController = ScrollController();
  late final _scrollToId = ScrollToId(scrollController: _scrollController);

  get scrollController => _scrollController;
  get scrollToId => _scrollToId;

  toHome() => _scrollToId.animateTo(
        'home',
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );

  toAbout() => _scrollToId.animateTo(
        'about',
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );

  toPortolio() => _scrollToId.animateTo(
        'portfolio',
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );

  toContact() => _scrollToId.animateTo(
        'contact',
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
}
