import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home_page.dart';
import 'package:recipe_app/screens/recipe_screen.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        RecipeScreen.id: (context) => const RecipeScreen(),
      },
      initialRoute: HomePage.id,
    );
  }
}
