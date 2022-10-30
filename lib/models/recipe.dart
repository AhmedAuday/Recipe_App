import 'package:recipe_app/constant.dart';
import 'package:recipe_app/models/ingerdint.dart';

class Recipe {
  final String lable;
  final String imgUrl;
  List<Ingridents> ingrident;
  int serving;
  Recipe({
    required this.imgUrl,
    required this.lable,
    required this.ingrident,
    required this.serving,
  });
}

List<Recipe> recipes = [
  Recipe(
      imgUrl: "${assetsImg}Ch.png",
      lable: "Chicken",
      ingrident: [
        Ingridents(
            mesurment: "Chicken\nvinegar\ngarlic\nsea salt\nlime zest",
            name: 'Rosted Chicken',
            quantity: 1)
      ],
      serving: 2),
  Recipe(
      imgUrl: "${assetsImg}Dolma.png",
      lable: "Dolma",
      ingrident: [
        Ingridents(
            mesurment: "Grape leaves\nOnion\nRice", name: 'Dolma', quantity: 1)
      ],
      serving: 3),
  Recipe(
      imgUrl: "${assetsImg}la.png",
      lable: "LaZania",
      ingrident: [
        Ingridents(
            mesurment: "Meat\nOnion and garlic\nTomato products\nCheeses",
            name: 'LaZania',
            quantity: 1)
      ],
      serving: 1),
  Recipe(
      imgUrl: "${assetsImg}Me.png",
      lable: "Grilld Meat",
      ingrident: [
        Ingridents(
            mesurment: "Meat\nBarbecue Sauce", name: 'Grilld Meat', quantity: 1)
      ],
      serving: 1),
];
