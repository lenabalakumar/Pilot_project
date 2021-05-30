import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  FaIcon faIconName;
  String categoryName;

  CategoryModel({this.faIconName, this.categoryName});
}

final vegCategory = CategoryModel(
    faIconName: FaIcon(FontAwesomeIcons.carrot), categoryName: 'Vegetables');
final eggCategory = CategoryModel(
    faIconName: FaIcon(FontAwesomeIcons.egg), categoryName: 'Eggs');
final groceryCategory = CategoryModel(
    faIconName: FaIcon(FontAwesomeIcons.seedling), categoryName: 'Grocery');
final snacksCategory = CategoryModel(
    faIconName: FaIcon(FontAwesomeIcons.cookie), categoryName: 'Snacks');

var categoryData = [vegCategory, eggCategory, groceryCategory, snacksCategory];
