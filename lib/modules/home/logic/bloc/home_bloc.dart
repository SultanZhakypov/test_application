import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_application/modules/home/logic/models/movie_model.dart';
import 'package:test_application/modules/home/logic/repository/impl/home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;
  HomeBloc(this._homeRepository) : super(const _Initial()) {
    on<HomeEvent>(_onEvent);
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) {
    return event.map(
      getMovies: (event) async {
        try {
          emit(const HomeState.loading());
          final res = await _homeRepository.getMovies(event.movieName);
          emit(HomeState.success(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
    );
  }
}
