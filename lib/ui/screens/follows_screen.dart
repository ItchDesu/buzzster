// follows_screen.dart — followers / following lists of an actor.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../proto/btdlib.pbenum.dart' as pbe;
import '../../state/session.dart';
import '../theme.dart';
import '../widgets/actor_tile.dart';

class FollowsScreen extends StatelessWidget {
  final String handle;
  final int initialTab; // 0 = seguidores, 1 = siguiendo
  const FollowsScreen({super.key, required this.handle, this.initialTab = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: initialTab,
      child: Scaffold(
        appBar: AppBar(
          title: Text('@$handle'),
          bottom: const TabBar(
            labelColor: kBuzzBlue,
            indicatorColor: kBuzzBlue,
            tabs: [Tab(text: 'Seguidores'), Tab(text: 'Siguiendo')],
          ),
        ),
        body: TabBarView(
          children: [
            _FollowsList(
                handle: handle, which: pbe.FollowsWhich.FOLLOWS_FOLLOWERS),
            _FollowsList(
                handle: handle, which: pbe.FollowsWhich.FOLLOWS_FOLLOWING),
          ],
        ),
      ),
    );
  }
}

class _FollowsList extends StatefulWidget {
  final String handle;
  final pbe.FollowsWhich which;
  const _FollowsList({required this.handle, required this.which});

  @override
  State<_FollowsList> createState() => _FollowsListState();
}

class _FollowsListState extends State<_FollowsList>
    with AutomaticKeepAliveClientMixin {
  final _actors = <pb.Actor>[];
  final _scroll = ScrollController();
  String _cursor = '';
  bool _loading = false;
  bool _exhausted = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _scroll.addListener(() {
      if (_scroll.position.pixels > _scroll.position.maxScrollExtent - 300) {
        _loadPage();
      }
    });
    _refresh();
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _refresh() async {
    _cursor = '';
    _exhausted = false;
    _actors.clear();
    await _loadPage();
  }

  Future<void> _loadPage() async {
    if (_loading || _exhausted) return;
    setState(() => _loading = true);
    try {
      final (actors, next) = await context
          .read<AppSession>()
          .getFollows(widget.handle, widget.which, cursor: _cursor);
      if (!mounted) return;
      setState(() {
        _actors.addAll(actors);
        _cursor = next;
        _exhausted = next.isEmpty;
      });
    } catch (_) {
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5);
    if (_actors.isEmpty && _loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_actors.isEmpty) {
      return Center(
        child: Text(
          widget.which == pbe.FollowsWhich.FOLLOWS_FOLLOWERS
              ? 'Sin seguidores todavía'
              : 'No sigue a nadie todavía',
          style: TextStyle(color: muted),
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: _refresh,
      child: ListView.separated(
        controller: _scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: _actors.length,
        separatorBuilder: (_, _) => const Divider(indent: 72),
        itemBuilder: (context, i) =>
            ActorTile(key: ValueKey(_actors[i].userId), actor: _actors[i]),
      ),
    );
  }
}
