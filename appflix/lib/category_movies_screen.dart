import 'package:flutter/material.dart';

class CategoryMoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Movies in this category",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
