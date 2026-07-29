import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected
  });

  static List < DietModel > getDiets() {
    List < DietModel > diets = [];

    diets.add(
      DietModel(
       name: 'Green Gram Dosa',
       iconPath: 'assets/icons/pessaratu.svg',
       level: 'Easy',
       duration: '30mins',
       calorie: '230kCal',
       viewIsSelected: true,
       boxColor: Colors.orange
      )
    );

    diets.add(
      DietModel(
       name: 'Soya Tikka',
       iconPath: 'assets/icons/soyaTikka.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '240kCal',
       viewIsSelected: false,
       boxColor: Colors.yellow
      )
    );
    diets.add(
      DietModel(
       name: ' Tofu Brocolli puree',
       iconPath: 'assets/icons/brocolli.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '180kCal',
       viewIsSelected: false,
       boxColor: Colors.orange
      )
    );


    return diets;
  }
}