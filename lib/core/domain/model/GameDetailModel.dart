class GameDetailModel {
  int? id;
  String? slug;
  String? name;
  String? nameOriginal;
  String? description;
  int? metacritic;
  List<MetacriticPlatforms>? metacriticPlatforms;
  String? released;
  bool? tba;
  String? updated;
  String? backgroundImage;
  String? backgroundImageAdditional;
  String? website;
  double? rating;
  int? ratingTop;
  List<Ratings>? ratings;
  int? added;
  AddedByStatus? addedByStatus;
  int? playtime;
  int? screenshotsCount;
  int? moviesCount;
  int? creatorsCount;
  int? achievementsCount;
  int? parentAchievementsCount;
  String? redditUrl;
  String? redditName;
  String? redditDescription;
  String? redditLogo;
  int? redditCount;
  int? twitchCount;
  int? youtubeCount;
  int? reviewsTextCount;
  int? ratingsCount;
  int? suggestionsCount;
  String? metacriticUrl;
  int? parentsCount;
  int? additionsCount;
  int? gameSeriesCount;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<Platforms>? platforms;
  List<Stores>? stores;
  List<Developers>? developers;
  List<Genres>? genres;
  List<Tags>? tags;
  String? descriptionRaw;

  GameDetailModel(
      {this.id,
        this.slug,
        this.name,
        this.nameOriginal,
        this.description,
        this.metacritic,
        this.metacriticPlatforms,
        this.released,
        this.tba,
        this.updated,
        this.backgroundImage,
        this.backgroundImageAdditional,
        this.website,
        this.rating,
        this.ratingTop,
        this.ratings,
        this.added,
        this.addedByStatus,
        this.playtime,
        this.screenshotsCount,
        this.moviesCount,
        this.creatorsCount,
        this.achievementsCount,
        this.parentAchievementsCount,
        this.redditUrl,
        this.redditName,
        this.redditDescription,
        this.redditLogo,
        this.redditCount,
        this.twitchCount,
        this.youtubeCount,
        this.reviewsTextCount,
        this.ratingsCount,
        this.suggestionsCount,
        this.metacriticUrl,
        this.parentsCount,
        this.additionsCount,
        this.gameSeriesCount,
        this.reviewsCount,
        this.saturatedColor,
        this.dominantColor,
        this.platforms,
        this.stores,
        this.developers,
        this.genres,
        this.tags,
        this.descriptionRaw});

  GameDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    nameOriginal = json['name_original'];
    description = json['description'];
    metacritic = json['metacritic'];
    if (json['metacritic_platforms'] != null) {
      metacriticPlatforms = <MetacriticPlatforms>[];
      json['metacritic_platforms'].forEach((v) {
        metacriticPlatforms!.add(new MetacriticPlatforms.fromJson(v));
      });
    }
    released = json['released'];
    tba = json['tba'];
    updated = json['updated'];
    backgroundImage = json['background_image'];
    backgroundImageAdditional = json['background_image_additional'];
    website = json['website'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    if (json['ratings'] != null) {
      ratings = <Ratings>[];
      json['ratings'].forEach((v) {
        ratings!.add(new Ratings.fromJson(v));
      });
    }
    added = json['added'];
    addedByStatus = json['added_by_status'] != null
        ? new AddedByStatus.fromJson(json['added_by_status'])
        : null;
    playtime = json['playtime'];
    screenshotsCount = json['screenshots_count'];
    moviesCount = json['movies_count'];
    creatorsCount = json['creators_count'];
    achievementsCount = json['achievements_count'];
    parentAchievementsCount = json['parent_achievements_count'];
    redditUrl = json['reddit_url'];
    redditName = json['reddit_name'];
    redditDescription = json['reddit_description'];
    redditLogo = json['reddit_logo'];
    redditCount = json['reddit_count'];
    twitchCount = json['twitch_count'];
    youtubeCount = json['youtube_count'];
    reviewsTextCount = json['reviews_text_count'];
    ratingsCount = json['ratings_count'];
    suggestionsCount = json['suggestions_count'];
    metacriticUrl = json['metacritic_url'];
    parentsCount = json['parents_count'];
    additionsCount = json['additions_count'];
    gameSeriesCount = json['game_series_count'];
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    if (json['platforms'] != null) {
      platforms = <Platforms>[];
      json['platforms'].forEach((v) {
        platforms!.add(new Platforms.fromJson(v));
      });
    }
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(new Stores.fromJson(v));
      });
    }
    if (json['developers'] != null) {
      developers = <Developers>[];
      json['developers'].forEach((v) {
        developers!.add(new Developers.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(new Genres.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    descriptionRaw = json['description_raw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['name_original'] = this.nameOriginal;
    data['description'] = this.description;
    data['metacritic'] = this.metacritic;
    if (this.metacriticPlatforms != null) {
      data['metacritic_platforms'] =
          this.metacriticPlatforms!.map((v) => v.toJson()).toList();
    }
    data['released'] = this.released;
    data['tba'] = this.tba;
    data['updated'] = this.updated;
    data['background_image'] = this.backgroundImage;
    data['background_image_additional'] = this.backgroundImageAdditional;
    data['website'] = this.website;
    data['rating'] = this.rating;
    data['rating_top'] = this.ratingTop;
    if (this.ratings != null) {
      data['ratings'] = this.ratings!.map((v) => v.toJson()).toList();
    }
    data['added'] = this.added;
    if (this.addedByStatus != null) {
      data['added_by_status'] = this.addedByStatus!.toJson();
    }
    data['playtime'] = this.playtime;
    data['screenshots_count'] = this.screenshotsCount;
    data['movies_count'] = this.moviesCount;
    data['creators_count'] = this.creatorsCount;
    data['achievements_count'] = this.achievementsCount;
    data['parent_achievements_count'] = this.parentAchievementsCount;
    data['reddit_url'] = this.redditUrl;
    data['reddit_name'] = this.redditName;
    data['reddit_description'] = this.redditDescription;
    data['reddit_logo'] = this.redditLogo;
    data['reddit_count'] = this.redditCount;
    data['twitch_count'] = this.twitchCount;
    data['youtube_count'] = this.youtubeCount;
    data['reviews_text_count'] = this.reviewsTextCount;
    data['ratings_count'] = this.ratingsCount;
    data['suggestions_count'] = this.suggestionsCount;
    data['metacritic_url'] = this.metacriticUrl;
    data['parents_count'] = this.parentsCount;
    data['additions_count'] = this.additionsCount;
    data['game_series_count'] = this.gameSeriesCount;
    data['reviews_count'] = this.reviewsCount;
    data['saturated_color'] = this.saturatedColor;
    data['dominant_color'] = this.dominantColor;
    if (this.platforms != null) {
      data['platforms'] = this.platforms!.map((v) => v.toJson()).toList();
    }
    if (this.stores != null) {
      data['stores'] = this.stores!.map((v) => v.toJson()).toList();
    }
    if (this.developers != null) {
      data['developers'] = this.developers!.map((v) => v.toJson()).toList();
    }
    if (this.genres != null) {
      data['genres'] = this.genres!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    data['description_raw'] = this.descriptionRaw;
    return data;
  }
}

class MetacriticPlatforms {
  int? metascore;
  String? url;
  Platform? platform;

  MetacriticPlatforms({this.metascore, this.url, this.platform});

  MetacriticPlatforms.fromJson(Map<String, dynamic> json) {
    metascore = json['metascore'];
    url = json['url'];
    platform = json['platform'] != null
        ? new Platform.fromJson(json['platform'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['metascore'] = this.metascore;
    data['url'] = this.url;
    if (this.platform != null) {
      data['platform'] = this.platform!.toJson();
    }
    return data;
  }
}

class Platform {
  int? platform;
  String? name;
  String? slug;

  Platform({this.platform, this.name, this.slug});

  Platform.fromJson(Map<String, dynamic> json) {
    platform = json['platform'];
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['platform'] = this.platform;
    data['name'] = this.name;
    data['slug'] = this.slug;
    return data;
  }
}

class Ratings {
  int? id;
  String? title;
  int? count;
  double? percent;

  Ratings({this.id, this.title, this.count, this.percent});

  Ratings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['count'] = this.count;
    data['percent'] = this.percent;
    return data;
  }
}

class AddedByStatus {
  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  AddedByStatus(
      {this.yet,
        this.owned,
        this.beaten,
        this.toplay,
        this.dropped,
        this.playing});

  AddedByStatus.fromJson(Map<String, dynamic> json) {
    yet = json['yet'];
    owned = json['owned'];
    beaten = json['beaten'];
    toplay = json['toplay'];
    dropped = json['dropped'];
    playing = json['playing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yet'] = this.yet;
    data['owned'] = this.owned;
    data['beaten'] = this.beaten;
    data['toplay'] = this.toplay;
    data['dropped'] = this.dropped;
    data['playing'] = this.playing;
    return data;
  }
}

class Platforms {
  Platform? platform;
  String? releasedAt;
  Requirements? requirements;

  Platforms({this.platform, this.releasedAt, this.requirements});

  Platforms.fromJson(Map<String, dynamic> json) {
    platform = json['platform'] != null
        ? new Platform.fromJson(json['platform'])
        : null;
    releasedAt = json['released_at'];
    requirements = json['requirements'] != null
        ? new Requirements.fromJson(json['requirements'])
        : null;
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

class Stores {
  int? id;
  String? url;
  Store? store;

  Stores({this.id, this.url, this.store});

  Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['url'] = this.url;
    if (this.store != null) {
      data['store'] = this.store!.toJson();
    }
    return data;
  }
}

class Store {
  int? id;
  String? name;
  String? slug;
  String? domain;
  int? gamesCount;
  String? imageBackground;

  Store(
      {this.id,
        this.name,
        this.slug,
        this.domain,
        this.gamesCount,
        this.imageBackground});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    domain = json['domain'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['domain'] = this.domain;
    data['games_count'] = this.gamesCount;
    data['image_background'] = this.imageBackground;
    return data;
  }
}

class Developers {
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;

  Developers(
      {this.id, this.name, this.slug, this.gamesCount, this.imageBackground});

  Developers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['games_count'] = this.gamesCount;
    data['image_background'] = this.imageBackground;
    return data;
  }
}

class Tags {
  int? id;
  String? name;
  String? slug;
  String? language;
  int? gamesCount;
  String? imageBackground;

  Tags(
      {this.id,
        this.name,
        this.slug,
        this.language,
        this.gamesCount,
        this.imageBackground});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    language = json['language'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['language'] = this.language;
    data['games_count'] = this.gamesCount;
    data['image_background'] = this.imageBackground;
    return data;
  }
}

class Genres {
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;

  Genres(
      {this.id, this.name, this.slug, this.gamesCount, this.imageBackground});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['games_count'] = this.gamesCount;
    data['image_background'] = this.imageBackground;
    return data;
  }
}
