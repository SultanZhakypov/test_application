import 'package:injectable/injectable.dart';
import 'package:test_application/modules/home/logic/models/movie_model.dart';
import 'package:test_application/modules/home/logic/repository/impl/home_repository.dart';
import 'package:test_application/modules/home/logic/usecase/home_usecase.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final HomeUsecase _homeUsecase;
  HomeRepositoryImpl(this._homeUsecase);
  @override
  Future<List<Docs>?> getMovies(String? movieName) =>
      _homeUsecase.getMovies(movieName);
}
