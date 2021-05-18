import 'package:flutter/material.dart';

import 'pages/recipe_list/recipe_list_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reciperlich',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const RecipeListPage(),
    );
  }
}
