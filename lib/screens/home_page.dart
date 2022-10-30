import 'package:flutter/material.dart';
import 'package:recipe_app/constant.dart';
import 'package:recipe_app/models/recipe.dart';

import 'package:recipe_app/widget/custom_stack.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primeColor,
        elevation: 10,
        title: const Text(
          "Recipe App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
        child: GridView.builder(
          clipBehavior: Clip.none,
          itemCount: recipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 40,
            mainAxisSpacing: 100,
          ),
          itemBuilder: ((context, index) {
            return CustomCard(
              recipe: recipes[index],
            );
          }),
        ),
      ),
    );
  }
}
