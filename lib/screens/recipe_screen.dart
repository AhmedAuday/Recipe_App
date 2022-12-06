import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

import '../constant.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({
    super.key,
  });

  static String id = "RecipeScreen";

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    Recipe recipe = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.lable),
        backgroundColor: primeColor,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(recipe.imgUrl),
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 30),
                  itemCount: recipe.ingrident.length,
                  itemBuilder: (context, index) {
                    final ing = recipe.ingrident[index];
                    return Text(
                      '${ing.name} \n${ing.quantity.toInt() * _sliderValue.toInt()} ${ing.mesurment} ',
                      style: const TextStyle(fontSize: 30),
                    );
                  })),
          SizedBox(
            height: 190,
            width: 300,
            child: Slider(
                value: _sliderValue.toDouble(),
                label: '${_sliderValue.toInt()} People servings',
                max: 10,
                min: 1,
                divisions: 10,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value.round();
                  });
                }),
          ),
        ],
      ),
    );
  }
}
