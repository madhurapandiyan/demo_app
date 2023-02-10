import 'package:dio/dio.dart';

class Network {
  late Dio client;

  static const baseurl = 'https://imdb-api.com';
  Network() {
    var baseOptions = BaseOptions(
      baseUrl: baseurl,
    );
    client = Dio(baseOptions);

    client.interceptors
      .add(LogInterceptor(requestBody: true, responseBody: true));
  }
}
