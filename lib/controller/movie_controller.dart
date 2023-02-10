import 'package:demo_app/model/movie_data.dart';
import 'package:demo_app/service/movie_service.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class MovieController with ChangeNotifier {
  List<MovieList> movieSearchList = [];
  MovieService _movieService;

  MovieController(this._movieService);
  onSearchingMovie(String value) async {
    try {
      var data = await _movieService.onSearchingMovie(value);
      if (data?.results != null && data!.results!.isNotEmpty) {
        movieSearchList = data.results!;
      }
    } catch (e) {
      Logger().e(e.toString());
    }
  }
}
