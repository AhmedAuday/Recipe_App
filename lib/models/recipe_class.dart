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
      lable: "Chiken",
      ingrident: [
        Ingridents(
            mesurment: "Chicken, vinegar, garlic, sea salt, lime zest",
            name: ' Rosted Chicken',
            quantity: 1)
      ],
      serving: 2),
  Recipe(
      imgUrl: "${assetsImg}Dolma.png",
      lable: "Dolma",
      ingrident: [
        Ingridents(
            mesurment: "Grape leaves , Onion , Rice",
            name: 'Dolma',
            quantity: 1)
      ],
      serving: 3),
  Recipe(
      imgUrl: "${assetsImg}la.png",
      lable: "LaZania",
      ingrident: [
        Ingridents(
            mesurment: "Meat , Onion and garlic , Tomato products , Cheeses",
            name: 'LaZania',
            quantity: 1)
      ],
      serving: 1),
  Recipe(
      imgUrl: "${assetsImg}Me.png",
      lable: "Grilld Meat",
      ingrident: [
        Ingridents(
            mesurment: "Meat , Barbecue Sauce",
            name: 'Grilld Meat',
            quantity: 1)
      ],
      serving: 1),
];
