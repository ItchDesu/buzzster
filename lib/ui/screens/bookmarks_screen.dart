// bookmarks_screen.dart — the viewer's saved posts.

import 'package:flutter/material.dart';

import '../../proto/btdlib.pbenum.dart' as pbe;
import 'feed_screen.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guardados')),
      body: const FeedList(
        kind: pbe.FeedKind.FEED_BOOKMARKS,
        emptyMessage: 'No has guardado ningún post.\nUsa el menú ⋯ de un post.',
      ),
    );
  }
}
