// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class MovieDetail {
//   String? id;
//   String? title;
//   String? originalTitle;
//   String? fullTitle;
//   String? type;
//   String? year;
//   String? image;
//   DateTime? releaseDate;
//   String? runtimeMins;
//   String? runtimeStr;
//   String? plot;
//   String? plotLocal;
//   bool? plotLocalIsRtl;
//   String? awards;
//   String? directors;
//   List<CompanyListElement>? directorList;
//   String? writers;
//   List<CompanyListElement>? writerList;
//   String? stars;
//   List<CompanyListElement>? starList;
//   List<ActorList>? actorList;
//   dynamic fullCast;
//   String? genres;
//   List<CountryListElement>? genreList;
//   String? companies;
//   List<CompanyListElement>? companyList;
//   String? countries;
//   List<CountryListElement>? countryList;
//   String? languages;
//   List<CountryListElement>? languageList;
//   String? contentRating;
//   String? imDbRating;
//   String? imDbRatingVotes;
//   String? metacriticRating;
//   dynamic ratings;
//   dynamic wikipedia;
//   dynamic posters;
//   dynamic images;
//   dynamic trailer;
//   BoxOffice? boxOffice;
//   dynamic tagline;
//   String? keywords;
//   List<String>? keywordList;
//   List<Similar>? similars;
//   dynamic tvSeriesInfo;
//   dynamic tvEpisodeInfo;
//   String? errorMessage;
//   MovieDetail({
//     this.id,
//     this.title,
//     this.originalTitle,
//     this.fullTitle,
//     this.type,
//     this.year,
//     this.image,
//     this.releaseDate,
//     this.runtimeMins,
//     this.runtimeStr,
//     this.plot,
//     this.plotLocal,
//     this.plotLocalIsRtl,
//     this.awards,
//     this.directors,
//     this.directorList,
//     this.writers,
//     this.writerList,
//     this.stars,
//     this.starList,
//     this.actorList,
//     this.fullCast,
//     this.genres,
//     this.genreList,
//     this.companies,
//     this.companyList,
//     this.countries,
//     this.countryList,
//     this.languages,
//     this.languageList,
//     this.contentRating,
//     this.imDbRating,
//     this.imDbRatingVotes,
//     this.metacriticRating,
//     this.ratings,
//     this.wikipedia,
//     this.posters,
//     this.images,
//     this.trailer,
//     this.boxOffice,
//     this.tagline,
//     this.keywords,
//     this.keywordList,
//     this.similars,
//     this.tvSeriesInfo,
//     this.tvEpisodeInfo,
//     this.errorMessage,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'title': title,
//       'originalTitle': originalTitle,
//       'fullTitle': fullTitle,
//       'type': type,
//       'year': year,
//       'image': image,
//       'releaseDate': releaseDate?.millisecondsSinceEpoch,
//       'runtimeMins': runtimeMins,
//       'runtimeStr': runtimeStr,
//       'plot': plot,
//       'plotLocal': plotLocal,
//       'plotLocalIsRtl': plotLocalIsRtl,
//       'awards': awards,
//       'directors': directors,
//       'directorList': directorList.map((x) => x?.toMap()).toList(),
//       'writers': writers,
//       'writerList':writerList!=null&&writerList!.isNotEmpty? writerList!.map((x) => x.toMap()).toList():[],
//       'stars': stars,
//       'starList': starList.map((x) => x?.toMap()).toList(),
//       'actorList': actorList.map((x) => x?.toMap()).toList(),
//       'fullCast': fullCast,
//       'genres': genres,
//       'genreList': genreList.map((x) => x?.toMap()).toList(),
//       'companies': companies,
//       'companyList': companyList.map((x) => x?.toMap()).toList(),
//       'countries': countries,
//       'countryList': countryList.map((x) => x?.toMap()).toList(),
//       'languages': languages,
//       'languageList': languageList.map((x) => x?.toMap()).toList(),
//       'contentRating': contentRating,
//       'imDbRating': imDbRating,
//       'imDbRatingVotes': imDbRatingVotes,
//       'metacriticRating': metacriticRating,
//       'ratings': ratings,
//       'wikipedia': wikipedia,
//       'posters': posters,
//       'images': images,
//       'trailer': trailer,
//       'boxOffice': boxOffice?.toMap(),
//       'tagline': tagline,
//       'keywords': keywords,
//       'keywordList': keywordList,
//       'similars':similars!=null&&similars!.isNotEmpty? similars!.map((x) => x.toMap()).toList():[],
//       'tvSeriesInfo': tvSeriesInfo,
//       'tvEpisodeInfo': tvEpisodeInfo,
//       'errorMessage': errorMessage,
//     };
//   }

//   factory MovieDetail.fromMap(Map<String, dynamic> map) {
//     return MovieDetail(
//       id: map['id'] != null ? map['id'] as String : null,
//       title: map['title'] != null ? map['title'] as String : null,
//       originalTitle: map['originalTitle'] != null ? map['originalTitle'] as String : null,
//       fullTitle: map['fullTitle'] != null ? map['fullTitle'] as String : null,
//       type: map['type'] != null ? map['type'] as String : null,
//       year: map['year'] != null ? map['year'] as String : null,
//       image: map['image'] != null ? map['image'] as String : null,
//       releaseDate: map['releaseDate'] != null ? DateTime.fromMillisecondsSinceEpoch(map['releaseDate'] as int) : null,
//       runtimeMins: map['runtimeMins'] != null ? map['runtimeMins'] as String : null,
//       runtimeStr: map['runtimeStr'] != null ? map['runtimeStr'] as String : null,
//       plot: map['plot'] != null ? map['plot'] as String : null,
//       plotLocal: map['plotLocal'] != null ? map['plotLocal'] as String : null,
//       plotLocalIsRtl: map['plotLocalIsRtl'] != null ? map['plotLocalIsRtl'] as bool : null,
//       awards: map['awards'] != null ? map['awards'] as String : null,
//       directors: map['directors'] != null ? map['directors'] as String : null,
//       directorList: map['directorList'] != null ? List<CompanyListElement>.from((map['directorList'] as List<int>).map<CompanyListElement?>((x) => CompanyListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       writers: map['writers'] != null ? map['writers'] as String : null,
//       writerList: map['writerList'] != null ? List<CompanyListElement>.from((map['writerList'] as List<int>).map<CompanyListElement?>((x) => CompanyListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       stars: map['stars'] != null ? map['stars'] as String : null,
//       starList: map['starList'] != null ? List<CompanyListElement>.from((map['starList'] as List<int>).map<CompanyListElement?>((x) => CompanyListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       actorList: map['actorList'] != null ? List<ActorList>.from((map['actorList'] as List<int>).map<ActorList?>((x) => ActorList.fromMap(x as Map<String,dynamic>),),) : null,
//       fullCast: map['fullCast'] as dynamic,
//       genres: map['genres'] != null ? map['genres'] as String : null,
//       genreList: map['genreList'] != null ? List<CountryListElement>.from((map['genreList'] as List<int>).map<CountryListElement?>((x) => CountryListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       companies: map['companies'] != null ? map['companies'] as String : null,
//       companyList: map['companyList'] != null ? List<CompanyListElement>.from((map['companyList'] as List<int>).map<CompanyListElement?>((x) => CompanyListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       countries: map['countries'] != null ? map['countries'] as String : null,
//       countryList: map['countryList'] != null ? List<CountryListElement>.from((map['countryList'] as List<int>).map<CountryListElement?>((x) => CountryListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       languages: map['languages'] != null ? map['languages'] as String : null,
//       languageList: map['languageList'] != null ? List<CountryListElement>.from((map['languageList'] as List<int>).map<CountryListElement?>((x) => CountryListElement.fromMap(x as Map<String,dynamic>),),) : null,
//       contentRating: map['contentRating'] != null ? map['contentRating'] as String : null,
//       imDbRating: map['imDbRating'] != null ? map['imDbRating'] as String : null,
//       imDbRatingVotes: map['imDbRatingVotes'] != null ? map['imDbRatingVotes'] as String : null,
//       metacriticRating: map['metacriticRating'] != null ? map['metacriticRating'] as String : null,
//       ratings: map['ratings'] as dynamic,
//       wikipedia: map['wikipedia'] as dynamic,
//       posters: map['posters'] as dynamic,
//       images: map['images'] as dynamic,
//       trailer: map['trailer'] as dynamic,
//       boxOffice: map['boxOffice'] != null ? BoxOffice.fromMap(map['boxOffice'] as Map<String,dynamic>) : null,
//       tagline: map['tagline'] as dynamic,
//       keywords: map['keywords'] != null ? map['keywords'] as String : null,
//       keywordList: map['keywordList'] != null ? List<String>.from((map['keywordList'] as List<String>) : null,
//       similars: map['similars'] != null ? List<Similar>.from((map['similars'] as List<int>).map<Similar?>((x) => Similar.fromMap(x as Map<String,dynamic>),),) : null,
//       tvSeriesInfo: map['tvSeriesInfo'] as dynamic,
//       tvEpisodeInfo: map['tvEpisodeInfo'] as dynamic,
//       errorMessage: map['errorMessage'] != null ? map['errorMessage'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory MovieDetail.fromJson(String source) => MovieDetail.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class ActorList {
//   String? id;
//   String? image;
//   String? name;
//   String? asCharacter;
//   ActorList({
//     this.id,
//     this.image,
//     this.name,
//     this.asCharacter,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'image': image,
//       'name': name,
//       'asCharacter': asCharacter,
//     };
//   }

//   factory ActorList.fromMap(Map<String, dynamic> map) {
//     return ActorList(
//       id: map['id'] != null ? map['id'] as String : null,
//       image: map['image'] != null ? map['image'] as String : null,
//       name: map['name'] != null ? map['name'] as String : null,
//       asCharacter: map['asCharacter'] != null ? map['asCharacter'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ActorList.fromJson(String source) => ActorList.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class BoxOffice {
//   String? budget;
//   String? openingWeekendUsa;
//   String? grossUsa;
//   String? cumulativeWorldwideGross;
//   BoxOffice({
//     this.budget,
//     this.openingWeekendUsa,
//     this.grossUsa,
//     this.cumulativeWorldwideGross,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'budget': budget,
//       'openingWeekendUsa': openingWeekendUsa,
//       'grossUsa': grossUsa,
//       'cumulativeWorldwideGross': cumulativeWorldwideGross,
//     };
//   }

//   factory BoxOffice.fromMap(Map<String, dynamic> map) {
//     return BoxOffice(
//       budget: map['budget'] != null ? map['budget'] as String : null,
//       openingWeekendUsa: map['openingWeekendUsa'] != null ? map['openingWeekendUsa'] as String : null,
//       grossUsa: map['grossUsa'] != null ? map['grossUsa'] as String : null,
//       cumulativeWorldwideGross: map['cumulativeWorldwideGross'] != null ? map['cumulativeWorldwideGross'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory BoxOffice.fromJson(String source) => BoxOffice.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class CompanyListElement {
//   String? id;
//   String? name;
//   CompanyListElement({
//     this.id,
//     this.name,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'name': name,
//     };
//   }

//   factory CompanyListElement.fromMap(Map<String, dynamic> map) {
//     return CompanyListElement(
//       id: map['id'] != null ? map['id'] as String : null,
//       name: map['name'] != null ? map['name'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory CompanyListElement.fromJson(String source) => CompanyListElement.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class CountryListElement {
//   String? key;
//   String? value;
//   CountryListElement({
//     this.key,
//     this.value,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'key': key,
//       'value': value,
//     };
//   }

//   factory CountryListElement.fromMap(Map<String, dynamic> map) {
//     return CountryListElement(
//       key: map['key'] != null ? map['key'] as String : null,
//       value: map['value'] != null ? map['value'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory CountryListElement.fromJson(String source) => CountryListElement.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class Similar {
//     String? id;
//   String? title;
//   String? image;
//   String? imDbRating;
//   Similar({
//     this.id,
//     this.title,
//     this.image,
//     this.imDbRating,
//   });



//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'title': title,
//       'image': image,
//       'imDbRating': imDbRating,
//     };
//   }

//   factory Similar.fromMap(Map<String, dynamic> map) {
//     return Similar(
//       id: map['id'] != null ? map['id'] as String : null,
//       title: map['title'] != null ? map['title'] as String : null,
//       image: map['image'] != null ? map['image'] as String : null,
//       imDbRating: map['imDbRating'] != null ? map['imDbRating'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Similar.fromJson(String source) => Similar.fromMap(json.decode(source) as Map<String, dynamic>);
// }
