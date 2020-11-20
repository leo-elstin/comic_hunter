import 'package:comic_hunter/views/home/components/home.dart';
import 'package:comic_hunter/views/home/components/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.notifications),
            title: Text('Alerts'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    switch (selectedIndex) {
      case 0:
        return HomeComponent(
          onSearchTapped: () {
            setState(() {
              selectedIndex = 1;
            });
          },
        );
      case 1:
        return SearchComponent();
      case 2:
        return HomeComponent();
      case 3:
        return HomeComponent();
      default:
        return HomeComponent();
    }
  }
}
