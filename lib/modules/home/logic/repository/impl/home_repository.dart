import 'package:test_application/modules/home/logic/models/movie_model.dart';

abstract class HomeRepository {
  Future<List<Docs>?> getMovies(String? movieName);
}
