import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pilot_project/core/Models/categoryModel.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({Key key, this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: ThemeData().primaryColor.withOpacity(.5),
              ),
              child: Center(
                child: category.faIconName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                category.categoryName,
                style: TextStyle(fontSize: 10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
