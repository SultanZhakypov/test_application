import 'package:dio/dio.dart';

class CoreApi {
  CoreApi() {
    setup();
  }

  final _dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      baseUrl: 'https://api.kinopoisk.dev/',
      headers: {
        'Content-Type': 'application/json',
        'X-API-KEY': '8DZ0CYN-G4E4TDJ-M51W41R-RF2NX2',
      },
    ),
  );

  Dio get dio => _dio;

  void setup() {
    final interceptors = dio.interceptors;
    interceptors.clear();

    final headerInterceptor =
        QueuedInterceptorsWrapper(onResponse: (options, handler) {
      handler.next(options);
    }, onError: (err, handler) async {
      handler.next(DioException(
          requestOptions: err.requestOptions,
          message: err.response?.data['message']));
    }, onRequest: (options, handler) async {
      handler.next(options);
    });
    final logInterceptor = LogInterceptor(
      requestHeader: true,
      error: true,
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
    );

    interceptors.addAll([
      logInterceptor,
      headerInterceptor,
    ]);
  }
}
