import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MovieDetailScreeen extends StatelessWidget {
  static const routeName = "/movie-detail";
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == args);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white10,
              border: Border.all(color: Colors.grey),
            ),
            height: 200,
            width: 300,
            child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                      color: Colors.white54,
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                itemCount: selectedMeal.ingredients.length),
          )
        ],
      )),
    );
  }
}
