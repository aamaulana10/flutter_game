class GameResponse {
  int? count;
  String? next;
  String? previous;
  List<GameResults>? results;

  GameResponse({this.count, this.next, this.previous, this.results});

  GameResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = <GameResults>[];
      json['results'].forEach((v) { results!.add(new GameResults.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GameResults {
  int? id;
  String? slug;
  String? name;
  String? released;
  bool? tba;
  String? backgroundImage;
  num? rating;
  num? ratingTop;
  num? ratingsCount;
  num? reviewsTextCount;
  num? added;
  num? metacritic;
  num? playtime;
  num? suggestionsCount;
  String? updated;
  EsrbRating? esrbRating;
  List<Platforms>? platforms;

  GameResults({this.id, this.slug, this.name, this.released, this.tba, this.backgroundImage, this.rating, this.ratingTop, this.ratingsCount, this.reviewsTextCount, this.added, this.metacritic, this.playtime, this.suggestionsCount, this.updated, this.esrbRating, this.platforms});

  GameResults.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    metacritic = json['metacritic'];
    playtime = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    esrbRating = json['esrb_rating'] != null ? new EsrbRating.fromJson(json['esrb_rating']) : null;
    if (json['platforms'] != null) {
      platforms = <Platforms>[];
      json['platforms'].forEach((v) { platforms!.add(new Platforms.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['released'] = this.released;
    data['tba'] = this.tba;
    data['background_image'] = this.backgroundImage;
    data['rating'] = this.rating;
    data['rating_top'] = this.ratingTop;
    data['ratings_count'] = this.ratingsCount;
    data['reviews_text_count'] = this.reviewsTextCount;
    data['added'] = this.added;
    data['metacritic'] = this.metacritic;
    data['playtime'] = this.playtime;
    data['suggestions_count'] = this.suggestionsCount;
    data['updated'] = this.updated;
    if (this.esrbRating != null) {
      data['esrb_rating'] = this.esrbRating!.toJson();
    }
    if (this.platforms != null) {
      data['platforms'] = this.platforms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EsrbRating {
  int? id;
  String? slug;
  String? name;

  EsrbRating({this.id, this.slug, this.name});

  EsrbRating.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    return data;
  }
}

class Platforms {
  EsrbRating? platform;
  String? releasedAt;
  Requirements? requirements;

  Platforms({this.platform, this.releasedAt, this.requirements});

  Platforms.fromJson(Map<String, dynamic> json) {
    platform = json['platform'] != null ? new EsrbRating.fromJson(json['platform']) : null;
    releasedAt = json['released_at'];
    requirements = json['requirements'] != null ? new Requirements.fromJson(json['requirements']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.platform != null) {
      data['platform'] = this.platform!.toJson();
    }
    data['released_at'] = this.releasedAt;
    if (this.requirements != null) {
      data['requirements'] = this.requirements!.toJson();
    }
    return data;
  }
}

class Requirements {
  String? minimum;
  String? recommended;

  Requirements({this.minimum, this.recommended});

  Requirements.fromJson(Map<String, dynamic> json) {
    minimum = json['minimum'];
    recommended = json['recommended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['minimum'] = this.minimum;
    data['recommended'] = this.recommended;
    return data;
  }
}
