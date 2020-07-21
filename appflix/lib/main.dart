import 'package:appflix/Screens/category_movies_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/category_screen.dart';
import 'Screens/movie_detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppFlix',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.black87,
        canvasColor: Colors.black87,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Colors.white70),
            headline6: TextStyle(
              fontSize: 24,
            )),
      ),
      // home: CategoriesScreen(),
      routes: {
        "/": (ctx) => CategoriesScreen(),
        MovieDetailScreeen.routeName: (ctx) => MovieDetailScreeen(),
        CategoryMoviesScreen.routeName: (ctx) => CategoryMoviesScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        return MaterialPageRoute(
          builder: (ctx) => CategoryMoviesScreen(),
        );
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("App flix"),
//       ),
//       body: Center(
//         child: Text("clone is here"),
//       ),
//     );
//   }
// }
