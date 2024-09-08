import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
// Repository, DataSource
  final VideoPostRepository videoPostRepository;

  List<VideoPost> videos = [];
  bool initialLoading = true;

  DiscoverProvider({required this.videoPostRepository});

  Future<void> loadNexPage() async {
    await Future.delayed(const Duration(seconds: 1));

    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
