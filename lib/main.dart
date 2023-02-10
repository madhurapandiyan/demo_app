import 'package:demo_app/controller/movie_controller.dart';
import 'package:demo_app/service/movie_service.dart';
import 'package:demo_app/view/movie_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

final  MovieService movieService = MovieService();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => MovieController(movieService),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieSearchScreen(),
    );
  }
}
