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
      imgUrl: "${assetsImg}Chicken.jpeg",
      lable: "Chiken",
      ingrident: [Ingridents(mesurment: "box", name: 'Chicken', qty: 1)],
      serving: 4),
  Recipe(
      imgUrl: "${assetsImg}Dolma.png",
      lable: "Dolma",
      ingrident: [Ingridents(mesurment: "box", name: 'dolma', qty: 1)],
      serving: 3),
  Recipe(
      imgUrl: "${assetsImg}La.png",
      lable: "LAzania",
      ingrident: [Ingridents(mesurment: "box", name: 'LAzania', qty: 1)],
      serving: 1),
  Recipe(
      imgUrl: "${assetsImg}sandwich.jpg",
      lable: "Sandwitch",
      ingrident: [Ingridents(mesurment: "box", name: 'Sandwitch', qty: 1)],
      serving: 3),
];
