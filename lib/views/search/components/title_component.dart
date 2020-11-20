import 'package:comic_hunter/model/category.dart';
import 'package:comic_hunter/viewmodel/category_model.dart';
import 'package:comic_hunter/views/home/widgets/category_item.dart';
import 'package:flutter/material.dart';

class TitleComponent extends StatelessWidget {
  final bool issue;

  const TitleComponent({Key key, this.issue = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search',
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: CategoryModel().categories.length,
            itemBuilder: (context, index) {
              Category category = CategoryModel().categories[index];
              return issue
                  ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 150,
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
                                        'Spider Verse',
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
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  )
                  : ListTile(
                      title: Text('${category.title}'),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          category.imageUrl,
                        ),
                      ),
                    );
            },
          ),
        ),
      ],
    );
  }
}
