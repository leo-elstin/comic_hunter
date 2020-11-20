import 'package:comic_hunter/views/comic/comic_details.dart';
import 'package:comic_hunter/views/comic/comic_list.dart';
import 'package:comic_hunter/views/home/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  /// getters
  static Map<String, WidgetBuilder> get routes => _routes;

  /// Add all the named Routes here
  /// Navigator.pushNamed(context, <name> )
  static Map<String, WidgetBuilder> _routes = {
    HomePage.route: (context) => HomePage(),
    ComicList.route: (context) => ComicList(),
    ComicDetails.route: (context) => ComicDetails(),
  };
}
