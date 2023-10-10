import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_application/modules/home/logic/models/movie_model.dart';

part 'home_service.g.dart';

@lazySingleton
@RestApi()
abstract class HomeService {
  @factoryMethod
  factory HomeService(Dio dio) = _HomeService;

  @GET('v1.3/movie')
  Future<MovieModel> getMovies(@Query('name') String? movieName);
}
