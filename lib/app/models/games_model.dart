class GamesModel {
  final int? id;
  final String? title;
  final String? thumb;
  final String? description;
  final String? gameUrl;
  final String? genre;
  final String? platform;
  final String? publisher;
  final String? developer;
  final String? releaseDate;
  final String? profileUrl;

  GamesModel({
    this.id,
    this.title,
    this.thumb,
    this.description,
    this.gameUrl,
    this.genre,
    this.platform,
    this.publisher,
    this.developer,
    this.releaseDate,
    this.profileUrl,
  });

  static GamesModel fromJson(Map<String, dynamic> json) {
    return GamesModel(
      id: json['id'],
      title: json['title'],
      thumb: json['thumb'],
      description: json['description'],
      gameUrl: json['gameUrl'],
      genre: json['genre'],
      platform: json['platform'],
      publisher: json['publisher'],
      developer: json['developer'],
      releaseDate: json['releaseDate'],
      profileUrl: json['profileUrl'],
    );
  }

  static List<GamesModel> fromList(List<dynamic> models) {
    return models.map((model) => fromJson(model)).toList();
  }
}
