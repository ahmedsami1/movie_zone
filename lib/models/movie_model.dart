class MovieModel {
  String title;
  String backdropPath;
  String originalTitle;
  String overview;
  final String? posterPath;
  String releaseDate;
  double voteAverage;

  MovieModel({
    required this.title,
    required this.backdropPath,
    required this.originalTitle,
    required this.overview,
    this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      title: json["title"] ?? "No Title",
      backdropPath: json["backdrop_path"] ?? "",
      originalTitle: json["original_title"] ?? "Unknown",
      overview: json["overview"] ?? "No overview available.",
      posterPath: json["poster_path"] ?? "https://example.com/default_image.jpg",
      releaseDate: json["release_date"] ?? "Unknown",
      voteAverage: (json["vote_average"] ?? 0.0).toDouble(),
    );
  }

}
