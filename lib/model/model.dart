class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

class MaghalehModel {
  String title;
  int id;
  String content;
  String writerImageUrl;
  String writer;
  String imageUrl;
  String date;
  String views;
  List<HashTagModel> hashtags;

  MaghalehModel({
    required this.views,
    required this.id,
    required this.content,
    required this.date,
    required this.imageUrl,
    required this.title,
    required this.writer,
    required this.writerImageUrl,
    this.hashtags = const [], //
  });
}

class PadkastPosterModel {
  String title;
  String image;

  PadkastPosterModel({
    required this.image,
    required this.title,
  });
}
