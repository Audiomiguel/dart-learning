import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int? likes;
  final int? views;

  LocalVideoModel(
      {required this.name,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) {
    return LocalVideoModel(
      name: json['name'] ?? 'No video name',
      videoUrl: json['videoUrl'] ?? '',
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
    );
  }

  VideoPost toVideoPost() {
    return VideoPost(
      caption: name,
      videoUrl: videoUrl,
      likes: likes ?? 0,
      views: views ?? 0,
    );
  }
}
