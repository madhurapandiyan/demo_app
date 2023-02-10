import 'package:demo_app/controller/movie_controller.dart';
import 'package:demo_app/model/movie_data.dart';
import 'package:demo_app/view/movie_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

class MovieSearchScreen extends StatelessWidget {
  const MovieSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieController>(builder: (ctx, ref, _) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Autocomplete<String>(
              optionsBuilder: (textEditingValue) async {
                //await ref.onSearchingMovie(textEditingValue.text);
                return ref.movieSearchList.map((e) => e.title ?? "-");
              },
              onSelected: (value) {
                var selectedData = ref.movieSearchList
                    .singleWhere((element) => element.title == value);
                Logger().w(selectedData.toJson());
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) =>
                        MovieListScreen(selectedData: selectedData)));
              },
            )
          ],
        ),
      );
    });
  }
}
