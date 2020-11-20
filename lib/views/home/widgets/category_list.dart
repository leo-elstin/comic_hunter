import 'package:comic_hunter/model/category.dart';
import 'package:comic_hunter/viewmodel/category_model.dart';
import 'package:comic_hunter/views/home/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Category> categories = CategoryModel().categories;
    return SafeArea(
      child: Material(
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          shrinkWrap: true,
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.55
          ),
          itemBuilder: (context, index) {
            return CategoryItem(
              category: categories[index],
            );
          },
        ),
      ),
    );
  }
}
