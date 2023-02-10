import 'package:demo_app/Network/network.dart';
import 'package:demo_app/constant.dart';
import 'package:demo_app/model/movie_data.dart';
import 'package:logger/logger.dart';

class MovieService {
  Future<MovieData?> onSearchingMovie(String value) async {
    try {
      final result = await Network().client.get(serachEndpoints + value);

     
      var movieData = MovieData.fromMap(result.data);
     
      return movieData;
    } catch (e) {
      throw e;
    }
  }
}
