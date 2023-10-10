import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  List<Docs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  MovieModel({this.docs, this.total, this.limit, this.page, this.pages});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@JsonSerializable()
class Countries {
  String? countries;
  Countries({
    this.countries,
  });
  factory Countries.fromJson(Map<String, dynamic> json) =>
      _$CountriesFromJson(json);
}

@JsonSerializable()
class Docs {
  ExternalId? externalId;
  Rating? rating;
  Votes? votes;
  int? movieLength;
  int? id;
  String? type;
  String? name;
  String? description;
  int? year;
  Poster? poster;
  List<Genres>? genres;
  List<Countries>? countries;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  String? shortDescription;
  Logo? logo;
  Watchability? watchability;
  String? color;

  Docs(
      {this.externalId,
      this.rating,
      this.votes,
      this.movieLength,
      this.id,
      this.type,
      this.name,
      this.description,
      this.year,
      this.poster,
      this.genres,
      this.countries,
      this.alternativeName,
      this.enName,
      this.names,
      this.shortDescription,
      this.logo,
      this.watchability,
      this.color});

  factory Docs.fromJson(Map<String, dynamic> json) => _$DocsFromJson(json);
}

@JsonSerializable()
class ExternalId {
  String? kpHD;
  String? imdb;
  int? tmdb;

  ExternalId({this.kpHD, this.imdb, this.tmdb});

  factory ExternalId.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdFromJson(json);
}

@JsonSerializable()
class Rating {
  double? kp;
  double? imdb;
  double? filmCritics;
  double? russianFilmCritics;
  int? await;

  Rating(
      {this.kp,
      this.imdb,
      this.filmCritics,
      this.russianFilmCritics,
      this.await});

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@JsonSerializable()
class Votes {
  int? kp;
  int? imdb;
  int? filmCritics;
  int? russianFilmCritics;
  int? await;

  Votes(
      {this.kp,
      this.imdb,
      this.filmCritics,
      this.russianFilmCritics,
      this.await});

  factory Votes.fromJson(Map<String, dynamic> json) => _$VotesFromJson(json);
}

@JsonSerializable()
class Poster {
  String? url;
  String? previewUrl;

  Poster({this.url, this.previewUrl});
  factory Poster.fromJson(Map<String, dynamic> json) => _$PosterFromJson(json);
}

@JsonSerializable()
class Genres {
  String? name;

  Genres({this.name});

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}

@JsonSerializable()
class Names {
  String? name;
  String? language;
  String? type;

  Names({this.name, this.language, this.type});

  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);
}

@JsonSerializable()
class Logo {
  String? url;

  Logo({this.url});
  factory Logo.fromJson(Map<String, dynamic> json) => _$LogoFromJson(json);
}

@JsonSerializable()
class Watchability {
  List<Items>? items;

  Watchability({this.items});

  factory Watchability.fromJson(Map<String, dynamic> json) =>
      _$WatchabilityFromJson(json);
}

@JsonSerializable()
class Items {
  String? name;
  Logo? logo;
  String? url;

  Items({this.name, this.logo, this.url});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}
