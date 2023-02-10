import 'package:demo_app/model/movie_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MovieListScreen extends StatelessWidget {
  final MovieList selectedData;
  MovieListScreen({super.key, required this.selectedData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedData.title ?? "-"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRect(
                    child: Image.network(
                  selectedData.image!,
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    Text(selectedData.title ?? "-"),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.amber),
                      child: Text(selectedData.id ?? "-",
                          style: const TextStyle(color: Colors.black)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
