// link_preview_card.dart — Twitter-style card for a post's first link.

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../proto/btdlib.pb.dart' as pb;

class LinkPreviewCard extends StatelessWidget {
  final pb.LinkPreview preview;
  const LinkPreviewCard({super.key, required this.preview});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final muted = scheme.onSurface.withValues(alpha: 0.55);
    final border = scheme.onSurface.withValues(alpha: 0.15);

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => launchUrl(Uri.parse(preview.url),
            mode: LaunchMode.externalApplication),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: border),
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (preview.imageUrl.isNotEmpty)
                Image.network(
                  preview.imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => const SizedBox.shrink(),
                  loadingBuilder: (context, child, progress) =>
                      progress == null
                          ? child
                          : Container(
                              height: 150,
                              color: scheme.onSurface.withValues(alpha: 0.06),
                            ),
                ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.link, size: 13, color: muted),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            preview.siteName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12, color: muted),
                          ),
                        ),
                      ],
                    ),
                    if (preview.title.isNotEmpty) ...[
                      const SizedBox(height: 3),
                      Text(
                        preview.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 14),
                      ),
                    ],
                    if (preview.description.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        preview.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13, color: muted),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
