import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];


    categories.add(
      CategoryModel(
        name: 'South Indian',
        iconPath: 'assets/icons/south-indian.png',
        boxColor: Colors.yellow
      )
    );
    categories.add(
      CategoryModel(
        name: 'North Indian',
        iconPath: 'assets/icons/north-indian.png',
        boxColor: const Color.fromARGB(255, 255, 0, 0)
      )
    );
    categories.add(
      CategoryModel(
        name: 'Italian',
        iconPath: 'assets/icons/italian.png',
        boxColor: Colors.yellow
      )
    );
    categories.add(
      CategoryModel(
        name: 'Chinese',
        iconPath: 'assets/icons/ramen.png',
        boxColor: const Color.fromARGB(255, 255, 59, 59)
      )
      );
    categories.add(
      CategoryModel(
        name: 'Desserts',
        iconPath: 'assets/icons/cake.png',
        boxColor: Colors.yellow
      )
      );
      return categories;
  }
}

