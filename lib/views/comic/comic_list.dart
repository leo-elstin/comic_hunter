import 'package:comic_hunter/model/category.dart';
import 'package:comic_hunter/views/comic/comic_details.dart';
import 'package:flutter/material.dart';

class ComicList extends StatefulWidget {
  static const route = '/ComicList';

  @override
  _ComicListState createState() => _ComicListState();
}

class _ComicListState extends State<ComicList> {
  @override
  Widget build(BuildContext context) {
    Category category = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://img2.looper.com/img/gallery/the-untold-truth-of-the-spider-verse/every-spider-man-ever-1529189478.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.black26,
                elevation: 4,
                title: Text(
                  '${category?.title?.toUpperCase()}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  color: Colors.black26,
                ),
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(200),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Dr. Strange has been confirmed to appear in the third Spider-Man film.  '
                'This could setup the introduction of many new characters of the multi-dimensional Spider-Verse 🎁',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ComicDetails.route,
                      );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            height: 175,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 2),
                                  blurRadius: 5,
                                ),
                              ],
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://media.keycollectorcomics.com/media/b1576314637797asm_58_2003.jpg',
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Spider Verse #1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        borderRadius: BorderRadius.circular(
                                          4,
                                        )),
                                    child: Text(
                                      '1st appearance of \'Last Stand\' Spider-Man,'
                                      ' an older version of Spider-Man from an alternate '
                                      'reality where he is on the run from the NYPD after killing Kraven',
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      FlatButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Buy Now',
                                        ),
                                      ),
                                      FlatButton.icon(
                                        icon: Icon(Icons.favorite_border),
                                        onPressed: () {},
                                        label: Text(
                                          'Wish list',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 175,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://media.keycollectorcomics.com/media/b1576314637797asm_58_2003.jpg',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Spider Verse #1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      )),
                                  child: Text(
                                    '1st appearance of \'Last Stand\' Spider-Man,'
                                    ' an older version of Spider-Man from an alternate '
                                    'reality where he is on the run from the NYPD after killing Kraven',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Buy Now',
                                      ),
                                    ),
                                    FlatButton.icon(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: () {},
                                      label: Text(
                                        'Wish list',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 175,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, 2),
                                blurRadius: 5,
                              ),
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://media.keycollectorcomics.com/media/b1576314637797asm_58_2003.jpg',
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Spider Verse #1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(
                                        4,
                                      )),
                                  child: Text(
                                    '1st appearance of \'Last Stand\' Spider-Man,'
                                    ' an older version of Spider-Man from an alternate '
                                    'reality where he is on the run from the NYPD after killing Kraven',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Buy Now',
                                      ),
                                    ),
                                    FlatButton.icon(
                                      icon: Icon(Icons.favorite_border),
                                      onPressed: () {},
                                      label: Text(
                                        'Wish list',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
