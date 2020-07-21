import 'package:flutter/material.dart';
import "./dummy_data.dart";

class CategoryMoviesScreen extends StatelessWidget {
  static const routeName = "category-movies";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
            itemBuilder: (ctx, index) {
              return Text(
                categoryMeals[index].title,
                style: Theme.of(context).textTheme.bodyText1,
              );
            },
            itemCount: categoryMeals.length));
  }
}
