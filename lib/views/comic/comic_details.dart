import 'package:flutter/material.dart';

class ComicDetails extends StatelessWidget {
  static const route = '/comicDetails/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spider Verse ',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
                            'Spider Verse ',
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
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(
                    4,
                  )),
              child: Text(
                '* 1st appearance of \'Last Stand\' Spider-Man,'
                ' an older version of Spider-Man from an alternate '
                'reality where he is on the run from the NYPD after killing Kraven\n\n'
                '* 2nd appearance of \'Last Stand\' Spider-Man,'
                ' an older version of Spider-Man from an alternate '
                'reality where he is on the run from the NYPD after killing Kraven',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            Text(
              'Published  Nov 2015',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Publisher  Marvel',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Written By	J. Michael Straczynski',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Illustrated By	Tony Harris',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
