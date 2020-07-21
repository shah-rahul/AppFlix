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
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredients',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          Container(
            // margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                      color: Colors.white54,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(selectedMeal.ingredients[index]),
                      ),
                    ),
                itemCount: selectedMeal.ingredients.length),
          )
        ],
      )),
    );
  }
}
