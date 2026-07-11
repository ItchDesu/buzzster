// hashtag_screen.dart — feed of posts carrying a hashtag.

import 'package:flutter/material.dart';

import '../../proto/btdlib.pbenum.dart' as pbe;
import 'feed_screen.dart';

class HashtagScreen extends StatelessWidget {
  final String tag;
  const HashtagScreen({super.key, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('#$tag')),
      body: FeedList(
        kind: pbe.FeedKind.FEED_HASHTAG,
        hashtag: tag,
        emptyMessage: 'Nadie ha usado #$tag todavía',
      ),
    );
  }
}
