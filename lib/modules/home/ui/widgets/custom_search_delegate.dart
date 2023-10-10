import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_application/modules/home/logic/bloc/home_bloc.dart';
import 'package:test_application/modules/home/ui/screens/main_screen.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetIt.I<HomeBloc>()..add(HomeEvent.getMovies(movieName: query)),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => const LoadingState(),
              success: (movies) => SuccessState(movies: movies),
              error: (error) => Text(error.toString()),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox();
  }
}
