import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/constants/app_image_paths.dart';
import 'package:flutter_sliver_app/data/recipe_repository.dart';
import 'package:flutter_sliver_app/pages/recipe_list/widgets/footer_widget.dart';
import 'package:flutter_sliver_app/pages/recipe_list/widgets/recipe_item_widget.dart';
import 'package:flutter_sliver_app/shared_widgets/app_bar_widget.dart';

class RecipeListPage extends StatelessWidget {
  const RecipeListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipes = RecipeRepository.getRecipes();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppBarWidget(
            text: 'Reciperlich',
            imagePath: AppImagePaths.mainImage,
            centerTitle: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              itemExtent: 110,
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RecipeItem(recipes[index])),
                childCount: recipes.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
