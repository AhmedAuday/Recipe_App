import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe_class.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({
    super.key,
  });
  static String id = "RecipeScreen";

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    Recipe recipe = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.lable),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(recipe.imgUrl),
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: recipe.ingrident.length,
                  itemBuilder: (context, index) {
                    final ing = recipe.ingrident[index];
                    return Text('${ing.mesurment} '
                        '${ing.name}'
                        '${ing.qty * _sliderValue}');
                  })),
          Slider(
              value: _sliderValue,
              label: '$_sliderValue People servings',
              max: 10,
              min: 0,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              })
        ],
      ),
    );
  }
}
