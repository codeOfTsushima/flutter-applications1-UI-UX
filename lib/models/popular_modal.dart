class PopularDietsModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;

  PopularDietsModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
  });

  static List < PopularDietsModel > getPopularDiets() {
    List < PopularDietsModel > popularDiets = [];

    popularDiets.add(
      PopularDietsModel(
       name: 'Masala Dosa',
       iconPath: 'assets/icons/masalaDosa.svg',
       level: 'Medium',
       duration: '30mins',
       calorie: '450kCal',
       boxIsSelected: true,
      )
    );

    popularDiets.add(
      PopularDietsModel(
       name: 'Pav Bhaji',
       iconPath: 'assets/icons/pavBhaji.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '500kCal',
       boxIsSelected: false,
      )
    );

    popularDiets.add(
      PopularDietsModel(
       name: 'Margherita Pizza',
       iconPath: 'assets/icons/pizza.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '350kCal',
       boxIsSelected: false,
      )
    );

    popularDiets.add(
      PopularDietsModel(
       name: 'Noodles',
       iconPath: 'assets/icons/noodles.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '250kCal',
       boxIsSelected: false,
      )
    );


    return popularDiets;
  }
}