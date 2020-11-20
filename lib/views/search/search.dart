import 'package:comic_hunter/views/search/components/title_component.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Search',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                text: 'Title',
              ),
              Tab(
                text: 'Character',
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          TitleComponent(),
          TitleComponent(),
        ]),
      ),
    );
  }
}
