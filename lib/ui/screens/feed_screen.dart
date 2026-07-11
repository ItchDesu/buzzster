// feed_screen.dart — home timeline with Following / Discover tabs,
// plus the reusable paginated FeedList used across the app.
//
// FeedList subscribes to the server's live social events: new posts appear
// at the top, counters update in place and deleted posts vanish, all
// without pull-to-refresh.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../proto/btdlib.pbenum.dart' as pbe;
import '../../state/session.dart';
import '../theme.dart';
import '../widgets/compose_sheet.dart';
import '../widgets/post_card.dart';

/// Paginated, pull-to-refresh feed list for any FeedKind.
class FeedList extends StatefulWidget {
  final pbe.FeedKind kind;
  final String actorHandle;
  final String hashtag;
  final String emptyMessage;

  const FeedList({
    super.key,
    required this.kind,
    this.actorHandle = '',
    this.hashtag = '',
    this.emptyMessage = 'Nada por aquí todavía',
  });

  @override
  State<FeedList> createState() => FeedListState();
}

class FeedListState extends State<FeedList> with AutomaticKeepAliveClientMixin {
  final _items = <pb.FeedItem>[];
  final _scroll = ScrollController();
  String _cursor = '';
  bool _loading = false;
  bool _exhausted = false;
  String? _error;

  @override
  bool get wantKeepAlive => true;

  StreamSubscription<pb.UpdateSocialEvent>? _eventsSub;

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_maybeLoadMore);
    _eventsSub = context.read<AppSession>().socialEvents.listen(_onEvent);
    refresh();
  }

  @override
  void dispose() {
    _eventsSub?.cancel();
    _scroll.dispose();
    super.dispose();
  }

  /// Applies a live server event to the visible list.
  void _onEvent(pb.UpdateSocialEvent event) {
    if (!mounted) return;
    switch (event.kind) {
      case pbe.EventKind.EV_POST_CREATED:
        final post = event.post;
        if (_belongsHere(post)) {
          setState(() {
            _items.insert(
              0,
              pb.FeedItem(post: post, sortAt: post.createdAt),
            );
          });
        }
      case pbe.EventKind.EV_POST_DELETED:
        final id = event.digest.postId;
        setState(() => _items.removeWhere((i) => i.post.postId == id));
      case pbe.EventKind.EV_POST_UPDATED || pbe.EventKind.EV_POST_COUNTS:
        final d = event.digest;
        var touched = false;
        for (final item in _items) {
          if (item.post.postId == d.postId) {
            item.post.likeCount = d.likeCount;
            item.post.repostCount = d.repostCount;
            item.post.replyCount = d.replyCount;
            if (event.kind == pbe.EventKind.EV_POST_UPDATED) {
              item.post.text = d.text;
              item.post.edited = d.edited;
            }
            if (d.hasPoll()) {
              final localVote = item.post.poll.viewerVote;
              item.post.poll = d.poll.deepCopy();
              if (item.post.poll.viewerVote == -1 && localVote != -1) {
                item.post.poll.viewerVote = localVote;
              }
            }
            touched = true;
          }
        }
        if (touched) setState(() {});
      default:
        break;
    }
  }

  /// Whether a freshly created post belongs in this feed tab.
  bool _belongsHere(pb.Post post) {
    if (_items.any((i) => i.post.postId == post.postId)) return false;
    final me = context.read<AppSession>().me;
    return switch (widget.kind) {
      pbe.FeedKind.FEED_FOLLOWING => post.author.viewerFollowing ||
          (me != null && post.author.userId == me.userId),
      pbe.FeedKind.FEED_DISCOVER => post.replyToPostId.isEmpty,
      pbe.FeedKind.FEED_AUTHOR =>
        post.author.handle == widget.actorHandle && post.replyToPostId.isEmpty,
      pbe.FeedKind.FEED_AUTHOR_REPLIES =>
        post.author.handle == widget.actorHandle && post.replyToPostId.isNotEmpty,
      pbe.FeedKind.FEED_HASHTAG =>
        post.text.toLowerCase().contains('#${widget.hashtag.toLowerCase()}'),
      _ => false,
    };
  }

  void _maybeLoadMore() {
    if (_scroll.position.pixels > _scroll.position.maxScrollExtent - 400) {
      _loadPage();
    }
  }

  Future<void> refresh() async {
    _cursor = '';
    _exhausted = false;
    _items.clear();
    _error = null;
    await _loadPage();
  }

  Future<void> _loadPage() async {
    if (_loading || _exhausted) return;
    setState(() => _loading = true);
    try {
      final page = await context.read<AppSession>().getFeed(
            widget.kind,
            actorHandle: widget.actorHandle,
            hashtag: widget.hashtag,
            cursor: _cursor,
          );
      if (!mounted) return;
      setState(() {
        _items.addAll(page.items);
        _cursor = page.nextCursor;
        _exhausted = page.nextCursor.isEmpty;
        _error = null;
      });
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_items.isEmpty) {
      if (_loading) return const Center(child: CircularProgressIndicator());
      return RefreshIndicator(
        onRefresh: refresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 140),
            Icon(
              _error == null ? Icons.auto_awesome : Icons.cloud_off,
              size: 44,
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
            ),
            const SizedBox(height: 12),
            Center(
              child: Text(
                _error ?? widget.emptyMessage,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: refresh,
      child: ListView.separated(
        controller: _scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: _items.length + 1,
        separatorBuilder: (_, _) => const Divider(),
        itemBuilder: (context, i) {
          if (i == _items.length) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: _loading
                    ? const CircularProgressIndicator()
                    : const SizedBox.shrink(),
              ),
            );
          }
          final item = _items[i];
          return PostCard(
            key: ValueKey('${item.post.postId}_${item.repostedByHandle}_$i'),
            post: item.post,
            repostedBy: item.repostedByHandle,
          );
        },
      ),
    );
  }
}

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final _followingKey = GlobalKey<FeedListState>();
  final _discoverKey = GlobalKey<FeedListState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.flutter_dash, color: kBuzzBlue, size: 26),
              SizedBox(width: 8),
              Text('Buzzster'),
            ],
          ),
          bottom: const TabBar(
            labelColor: kBuzzBlue,
            indicatorColor: kBuzzBlue,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Siguiendo'),
              Tab(text: 'Descubrir'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FeedList(
              key: _followingKey,
              kind: pbe.FeedKind.FEED_FOLLOWING,
              emptyMessage:
                  'Tu timeline está vacío.\nSigue a gente desde Buscar o publica algo.',
            ),
            FeedList(
              key: _discoverKey,
              kind: pbe.FeedKind.FEED_DISCOVER,
              emptyMessage: 'Aún no hay posts en la red.\n¡Sé la primera persona!',
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final created = await showComposeSheet(context);
            if (created != null) {
              _followingKey.currentState?.refresh();
              _discoverKey.currentState?.refresh();
            }
          },
          child: const Icon(Icons.edit_outlined),
        ),
      ),
    );
  }
}
