import 'package:flutter/material.dart';

class CategoryMoviesScreen extends StatelessWidget {
  static const routeName = "category-movies";

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx, index){

      }, itemCount: ,)
    );
  }
}
