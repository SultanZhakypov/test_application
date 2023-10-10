import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_application/modules/home/logic/bloc/home_bloc.dart';
import 'package:test_application/modules/home/logic/models/movie_model.dart';
import 'package:test_application/modules/home/ui/widgets/search_textfield.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I<HomeBloc>()..add(const HomeEvent.getMovies()),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SearchTextField(),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      loading: () => const LoadingState(),
                      success: (movies) => SuccessState(movies: movies),
                      error: (error) => Text(error.toString()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SuccessState extends StatelessWidget {
  const SuccessState({Key? key, this.movies}) : super(key: key);
  final List<Docs>? movies;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: movies?.length ?? 0,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 24);
        },
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movies?[index].name ?? ''),
                const SizedBox(height: 12),
                Text('Рейтинг : ${movies?[index].rating?.imdb}'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(height: 24),
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 238, 237, 237),
          highlightColor: const Color(0xffE4E6EA),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromARGB(255, 238, 237, 237)),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
        ),
      ),
    );
  }
}
