import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideosScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideosScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: videos.length,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final videoPost = videos[index];

        return Stack(children: [
          // Video Player + gradiente

          SizedBox.expand(
              child: FullScreenPlayer(
            videoUrl: videoPost.videoUrl,
            caption: videoPost.caption,
          )),
          Positioned(
              bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          // VideoButton(video: videoPost),
        ]);
      },
    );
  }
}
