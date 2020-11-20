import 'package:comic_hunter/cofig/assets.dart';
import 'package:comic_hunter/views/home/widgets/category_list.dart';
import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  final VoidCallback onSearchTapped;

  const HomeComponent({Key key, this.onSearchTapped}) : super(key: key);

  @override
  _HomeComponentState createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        child: Container(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.all(16.0),
          child: SafeArea(child: header()),
        ),
        preferredSize: Size.fromHeight(
          125,
        ),
      ),
      body: CategoryList(),
    );
  }

  Widget header() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 45,
              width: 100,
              decoration: BoxDecoration(
                // color: Theme.of(context).accentColor,
                image: DecorationImage(
                  image: AssetImage(Assets.homeLogo),
                ),
              ),
              padding: EdgeInsets.all(2),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            InkWell(
              onTap: () => widget.onSearchTapped(),
              child: Container(
                padding: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 16,
                  right: 32,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.search,
                      color: Theme.of(context).accentColor,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Spacer(),
            Icon(
              Icons.sort,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Categories',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: 16,
            ),
          ],
        )
      ],
    );
  }
}
