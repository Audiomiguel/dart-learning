import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideosScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideosScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.teal)
      ],
    );
  }
}
