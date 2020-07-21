// import 'package:appflix/category_movies_screen.dart';
import 'package:appflix/category_movies_screen.dart';
import 'package:flutter/material.dart';
// import 'category_movies_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem(
    this.title,
    this.id,
    this.color,
  );
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMoviesScreen.routeName,
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(title),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
      ),
    );
  }
}
