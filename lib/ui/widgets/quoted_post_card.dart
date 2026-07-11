// quoted_post_card.dart — mini-card del post citado dentro de otro post.

import 'package:flutter/material.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../util/time.dart';
import '../screens/thread_screen.dart';
import 'avatar.dart';
import 'verified_badge.dart';

class QuotedPostCard extends StatelessWidget {
  final pb.Post post;
  const QuotedPostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final muted = scheme.onSurface.withValues(alpha: 0.55);
    final author = post.author;

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ThreadScreen(postId: post.postId)),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: scheme.onSurface.withValues(alpha: 0.15)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BuzzAvatar(
                    handle: author.handle,
                    displayName: author.displayName,
                    avatarUrl: author.avatarUrl,
                    radius: 10,
                  ),
                  const SizedBox(width: 6),
                  Flexible(
                    child: NameWithBadge(
                      name: author.displayName.isEmpty
                          ? author.handle
                          : author.displayName,
                      verified: author.verified,
                      badgeSize: 13,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 13.5),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '@${author.handle} · ${relativeTime(post.createdAt)}',
                    style: TextStyle(color: muted, fontSize: 12.5),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              if (post.text.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  post.text,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14, height: 1.3),
                ),
              ],
              if (post.media.isNotEmpty) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(
                      post.media.first.kind == 'video'
                          ? Icons.videocam_outlined
                          : Icons.image_outlined,
                      size: 14,
                      color: muted,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      post.media.first.kind == 'video'
                          ? 'Vídeo'
                          : '${post.media.length} imagen${post.media.length > 1 ? "es" : ""}',
                      style: TextStyle(fontSize: 12.5, color: muted),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
