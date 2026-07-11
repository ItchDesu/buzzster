// post_media.dart — renders a post's media: image grid or video preview.

import 'package:flutter/material.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../screens/video_player_screen.dart';

class PostMedia extends StatelessWidget {
  final List<pb.MediaItem> media;
  const PostMedia({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    if (media.isEmpty) return const SizedBox.shrink();

    final video = media.where((m) => m.kind == 'video').firstOrNull;
    if (video != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 8),
        child: _VideoPreview(url: video.url),
      );
    }

    final images = media.where((m) => m.kind == 'image').toList();
    if (images.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: images.length == 1
          ? _RoundedImage(url: images.first.url, height: 240)
          : GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              childAspectRatio: 1.4,
              children: [
                for (final m in images) _RoundedImage(url: m.url),
              ],
            ),
    );
  }
}

class _RoundedImage extends StatelessWidget {
  final String url;
  final double? height;
  const _RoundedImage({required this.url, this.height});

  @override
  Widget build(BuildContext context) {
    final placeholderColor =
        Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.06);
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () => _openFullscreen(context),
        child: Image.network(
          url,
          height: height,
          width: double.infinity,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return Container(
              height: height ?? 140,
              color: placeholderColor,
              child: const Center(
                child: SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ),
            );
          },
          errorBuilder: (context, _, _) => Container(
            height: height ?? 140,
            color: placeholderColor,
            child: const Center(child: Icon(Icons.broken_image_outlined)),
          ),
        ),
      ),
    );
  }

  void _openFullscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: Center(
            child: InteractiveViewer(
              maxScale: 5,
              child: Image.network(url, fit: BoxFit.contain),
            ),
          ),
        ),
      ),
    );
  }
}

class _VideoPreview extends StatelessWidget {
  final String url;
  const _VideoPreview({required this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => VideoPlayerScreen(url: url)),
        ),
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.black87,
          child: const Center(
            child: Icon(Icons.play_circle_fill, color: Colors.white, size: 56),
          ),
        ),
      ),
    );
  }
}
