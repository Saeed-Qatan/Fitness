// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String path;
  Color boxcolor;
  CategoryModel({
    required this.name,
    required this.path,
    required this.boxcolor,
  });

  static List<CategoryModel> getcategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
          name: "Salad",
          path: "asset/icons/plate.svg",
          boxcolor: Colors.purple),
    );
    categories.add(
      CategoryModel(
          name: "Cake",
          path: "asset/icons/honey-pancakes.svg",
          boxcolor: Colors.purple),
    );
     categories.add(
      CategoryModel(
          name: "Pia",
          path: "asset/icons/pie.svg",
          boxcolor: Colors.purple),
    );

    return categories;
  }
}
