import 'package:comic_hunter/cofig/routes.dart';
import 'package:comic_hunter/views/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comic Hunter',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        fontFamily: 'Lato',
        brightness: Brightness.dark,
        accentColor: Color(0xFFFDF150),
        primaryColor: Colors.black,
        backgroundColor: Colors.black,
        primaryColorDark: Colors.black,
        cardColor: Colors.black,
        canvasColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.routes,
    );
  }
}
