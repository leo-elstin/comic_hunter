import 'package:comic_hunter/model/category.dart';

class CategoryModel {
  static final CategoryModel _singleton = CategoryModel._internal();

  factory CategoryModel() {
    return _singleton;
  }

  CategoryModel._internal() {
    _categories = _getList();
  }

  List<Category> get categories => _categories;

  List<Category> _categories = [];

  List<Category> _getList() {
    List<Category> tempList = [];
    tempList.add(
      Category(
        title: 'Blade',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1a18b186-dc4b-4769-91f8-1e2bdb871b31.jpeg',
      ),
    );
    tempList.add(
      Category(
        title: 'The Suicide Squad',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1598128025549dome.png',
      ),
    );
    tempList.add(
      Category(
        title: 'Moon Night',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1573471079224mk300300.png',
      ),
    );
    tempList.add(
      Category(
        title: '100 Silver Keys',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1601567510644silver_notext.png',
      ),
    );
    tempList.add(
      Category(
        title: 'NKOTB',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1599960958885fb5f80d7-8931-40ec-9812-49b0ad87fe45.jpeg',
      ),
    );
    tempList.add(
      Category(
        title: 'Spider Verse',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1602181029327spv29.png',
      ),
    );
    tempList.add(
      Category(
        title: 'Blade',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1a18b186-dc4b-4769-91f8-1e2bdb871b31.jpeg',
      ),
    ); tempList.add(
      Category(
        title: '100 Iconic Lovers',
        imageUrl:
            'https://media.keycollectorcomics.com/media/bwlverine.png',
      ),
    );
    tempList.add(
      Category(
        title: 'WandaVision Trailer',
        imageUrl:
            'https://media.keycollectorcomics.com/media/b1601095125350swic.png',
      ),
    );
    return tempList;
  }
}
