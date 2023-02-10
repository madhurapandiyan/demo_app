// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MovieData {
  final String? searchType;
  final String? expression;
  final List<MovieList>? results;

  MovieData({this.expression, this.searchType, this.results});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'searchType': searchType,
      'expression': expression,
      'results': results != null && results!.isNotEmpty
          ? results!.map((x) => x.toMap()).toList()
          : [],
    };
  }

  factory MovieData.fromMap(Map<String, dynamic> map) {
    return MovieData(
      searchType:
          map['searchType'] != null ? map['searchType'] as String : null,
      expression:
          map['expression'] != null ? map['expression'] as String : null,
      results: map['results'] != null
          ? List<MovieList>.from(
              (map['results'] as List<dynamic>).map<MovieList?>(
                (x) => MovieList.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieData.fromJson(String source) =>
      MovieData.fromMap(json.decode(source) as Map<String, dynamic>);
}

class MovieList {
  final String? id;
  final String? resultType;
  final String? image;
  final String? title;
  final String? description;
  MovieList(
      {this.description, this.id, this.image, this.resultType, this.title});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resultType': resultType,
      'image': image,
      'title': title,
      'description': description,
    };
  }

  factory MovieList.fromMap(Map<String, dynamic> map) {
    return MovieList(
      id: map['id'] != null ? map['id'] as String : null,
      resultType:
          map['resultType'] != null ? map['resultType'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MovieList.fromJson(String source) =>
      MovieList.fromMap(json.decode(source) as Map<String, dynamic>);
}
