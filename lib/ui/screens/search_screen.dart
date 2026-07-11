// search_screen.dart — actor search with inline follow buttons.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../theme.dart';
import '../widgets/actor_tile.dart';
import '../widgets/post_card.dart';
import 'hashtag_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with AutomaticKeepAliveClientMixin {
  final _controller = TextEditingController();
  Timer? _debounce;
  List<pb.Actor> _results = [];
  List<pb.FeedItem> _postResults = [];
  List<pb.Trend> _trends = [];
  bool _searching = false;
  bool _dirty = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _loadTrends();
  }

  Future<void> _loadTrends() async {
    try {
      final trends = await context.read<AppSession>().getTrends(limit: 10);
      if (mounted) setState(() => _trends = trends);
    } catch (_) {}
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String q) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () => _search(q));
  }

  Future<void> _search(String q) async {
    if (q.trim().isEmpty) {
      setState(() {
        _results = [];
        _postResults = [];
        _dirty = false;
      });
      return;
    }
    setState(() => _searching = true);
    try {
      final session = context.read<AppSession>();
      final actors = await session.searchActors(q);
      final posts = await session.searchPosts(q);
      if (mounted) {
        setState(() {
          _results = actors;
          _postResults = posts.items;
          _dirty = true;
        });
      }
    } catch (_) {
    } finally {
      if (mounted) setState(() => _searching = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          onChanged: _onChanged,
          decoration: const InputDecoration(
            hintText: 'Buscar personas',
            prefixIcon: Icon(Icons.search),
            isDense: true,
          ),
        ),
      ),
      body: _controller.text.trim().isEmpty
          ? _TrendsList(trends: _trends, onRefresh: _loadTrends)
          : _searching && _results.isEmpty && _postResults.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      const TabBar(
                        labelColor: kBuzzBlue,
                        indicatorColor: kBuzzBlue,
                        tabs: [Tab(text: 'Personas'), Tab(text: 'Posts')],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            _results.isEmpty
                                ? Center(
                                    child: Text(
                                      _dirty ? 'Sin resultados' : 'Buscando…',
                                      style: TextStyle(color: muted),
                                    ),
                                  )
                                : ListView.separated(
                                    itemCount: _results.length,
                                    separatorBuilder: (_, _) =>
                                        const Divider(indent: 72),
                                    itemBuilder: (context, i) =>
                                        ActorTile(actor: _results[i]),
                                  ),
                            _postResults.isEmpty
                                ? Center(
                                    child: Text(
                                      _dirty ? 'Sin resultados' : 'Buscando…',
                                      style: TextStyle(color: muted),
                                    ),
                                  )
                                : ListView.separated(
                                    itemCount: _postResults.length,
                                    separatorBuilder: (_, _) => const Divider(),
                                    itemBuilder: (context, i) => PostCard(
                                      key: ValueKey(
                                          _postResults[i].post.postId),
                                      post: _postResults[i].post,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}

class _TrendsList extends StatelessWidget {
  final List<pb.Trend> trends;
  final Future<void> Function() onRefresh;
  const _TrendsList({required this.trends, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
            child: Text(
              'Tendencias',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
          if (trends.isEmpty)
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: Text('Aún no hay hashtags esta semana',
                    style: TextStyle(color: muted)),
              ),
            )
          else
            for (final t in trends)
              ListTile(
                leading: const Icon(Icons.tag, color: kBuzzBlue),
                title: Text('#${t.tag}',
                    style: const TextStyle(fontWeight: FontWeight.w700)),
                subtitle: Text(
                  '${t.postCount} ${t.postCount == 1 ? "post" : "posts"} esta semana',
                  style: TextStyle(color: muted, fontSize: 13),
                ),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => HashtagScreen(tag: t.tag)),
                ),
              ),
        ],
      ),
    );
  }
}
