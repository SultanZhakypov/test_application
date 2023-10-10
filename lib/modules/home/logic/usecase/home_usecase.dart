import 'package:test_application/modules/home/logic/api_service/home_service.dart';
import 'package:test_application/modules/home/logic/models/movie_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeUsecase {
  final HomeService _homeService;
  HomeUsecase(this._homeService);

  Future<List<Docs>?> getMovies(String? movieName) async {
    try {
      final response = await _homeService.getMovies(movieName);
      return response.docs;
    } catch (e) {
      throw Exception(e);
    }
  }
}
