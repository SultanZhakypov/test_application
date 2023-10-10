// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      docs: (json['docs'] as List<dynamic>?)
          ?.map((e) => Docs.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      limit: json['limit'] as int?,
      page: json['page'] as int?,
      pages: json['pages'] as int?,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };

Countries _$CountriesFromJson(Map<String, dynamic> json) => Countries(
      countries: json['countries'] as String?,
    );

Map<String, dynamic> _$CountriesToJson(Countries instance) => <String, dynamic>{
      'countries': instance.countries,
    };

Docs _$DocsFromJson(Map<String, dynamic> json) => Docs(
      externalId: json['externalId'] == null
          ? null
          : ExternalId.fromJson(json['externalId'] as Map<String, dynamic>),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      votes: json['votes'] == null
          ? null
          : Votes.fromJson(json['votes'] as Map<String, dynamic>),
      movieLength: json['movieLength'] as int?,
      id: json['id'] as int?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      year: json['year'] as int?,
      poster: json['poster'] == null
          ? null
          : Poster.fromJson(json['poster'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Countries.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternativeName: json['alternativeName'] as String?,
      enName: json['enName'] as String?,
      names: (json['names'] as List<dynamic>?)
          ?.map((e) => Names.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortDescription: json['shortDescription'] as String?,
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
      watchability: json['watchability'] == null
          ? null
          : Watchability.fromJson(json['watchability'] as Map<String, dynamic>),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$DocsToJson(Docs instance) => <String, dynamic>{
      'externalId': instance.externalId,
      'rating': instance.rating,
      'votes': instance.votes,
      'movieLength': instance.movieLength,
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'year': instance.year,
      'poster': instance.poster,
      'genres': instance.genres,
      'countries': instance.countries,
      'alternativeName': instance.alternativeName,
      'enName': instance.enName,
      'names': instance.names,
      'shortDescription': instance.shortDescription,
      'logo': instance.logo,
      'watchability': instance.watchability,
      'color': instance.color,
    };

ExternalId _$ExternalIdFromJson(Map<String, dynamic> json) => ExternalId(
      kpHD: json['kpHD'] as String?,
      imdb: json['imdb'] as String?,
      tmdb: json['tmdb'] as int?,
    );

Map<String, dynamic> _$ExternalIdToJson(ExternalId instance) =>
    <String, dynamic>{
      'kpHD': instance.kpHD,
      'imdb': instance.imdb,
      'tmdb': instance.tmdb,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      kp: (json['kp'] as num?)?.toDouble(),
      imdb: (json['imdb'] as num?)?.toDouble(),
      filmCritics: (json['filmCritics'] as num?)?.toDouble(),
      russianFilmCritics: (json['russianFilmCritics'] as num?)?.toDouble(),
      await: json['await'] as int?,
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.await,
    };

Votes _$VotesFromJson(Map<String, dynamic> json) => Votes(
      kp: json['kp'] as int?,
      imdb: json['imdb'] as int?,
      filmCritics: json['filmCritics'] as int?,
      russianFilmCritics: json['russianFilmCritics'] as int?,
      await: json['await'] as int?,
    );

Map<String, dynamic> _$VotesToJson(Votes instance) => <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.await,
    };

Poster _$PosterFromJson(Map<String, dynamic> json) => Poster(
      url: json['url'] as String?,
      previewUrl: json['previewUrl'] as String?,
    );

Map<String, dynamic> _$PosterToJson(Poster instance) => <String, dynamic>{
      'url': instance.url,
      'previewUrl': instance.previewUrl,
    };

Genres _$GenresFromJson(Map<String, dynamic> json) => Genres(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenresToJson(Genres instance) => <String, dynamic>{
      'name': instance.name,
    };

Names _$NamesFromJson(Map<String, dynamic> json) => Names(
      name: json['name'] as String?,
      language: json['language'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
      'type': instance.type,
    };

Logo _$LogoFromJson(Map<String, dynamic> json) => Logo(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LogoToJson(Logo instance) => <String, dynamic>{
      'url': instance.url,
    };

Watchability _$WatchabilityFromJson(Map<String, dynamic> json) => Watchability(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WatchabilityToJson(Watchability instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      name: json['name'] as String?,
      logo: json['logo'] == null
          ? null
          : Logo.fromJson(json['logo'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'name': instance.name,
      'logo': instance.logo,
      'url': instance.url,
    };
