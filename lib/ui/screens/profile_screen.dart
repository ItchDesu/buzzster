// profile_screen.dart — actor profile: header + Posts / Me gusta feeds.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../proto/btdlib.pbenum.dart' as pbe;
import '../../state/session.dart';
import '../theme.dart';
import '../widgets/avatar.dart';
import '../widgets/post_card.dart';
import '../widgets/verified_badge.dart';
import 'bookmarks_screen.dart';
import 'chat_screen.dart';
import 'edit_profile_screen.dart';
import 'feed_screen.dart';
import 'follows_screen.dart';
import 'security_screen.dart';

class ProfileScreen extends StatefulWidget {
  /// Empty handle = the signed-in user's own profile.
  final String handle;
  const ProfileScreen({super.key, this.handle = ''});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  pb.Actor? _actor;
  pb.Post? _pinned;
  String? _error;
  bool _followBusy = false;

  bool get isSelf {
    final me = context.read<AppSession>().me;
    return widget.handle.isEmpty || (me != null && me.handle == widget.handle);
  }

  void _showFullScreenImage(String url, {String? tag}) {
    if (url.isEmpty) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(backgroundColor: Colors.black),
          body: Center(
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 4.0,
              child: Hero(
                tag: tag ?? url,
                child: Image.network(
                  url,
                  fit: BoxFit.contain,
                  loadingBuilder: (_, child, progress) => progress == null
                      ? child
                      : const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final a = await context.read<AppSession>().getActor(widget.handle);
      if (mounted) setState(() => _actor = a);
      if (a.pinnedPostId.isNotEmpty && mounted) {
        final t = await context.read<AppSession>().getThread(a.pinnedPostId);
        if (mounted) setState(() => _pinned = t.post);
      } else if (mounted) {
        setState(() => _pinned = null);
      }
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  Future<void> _moderate(pbe.ModAction action) async {
    final a = _actor;
    if (a == null) return;
    try {
      final updated =
          await context.read<AppSession>().moderate(a.handle, action);
      if (mounted) setState(() => _actor = updated);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _toggleFollow() async {
    final a = _actor;
    if (a == null || _followBusy) return;
    setState(() => _followBusy = true);
    try {
      final updated = await context
          .read<AppSession>()
          .follow(a.handle, undo: a.viewerFollowing);
      if (mounted) setState(() => _actor = updated);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    } finally {
      if (mounted) setState(() => _followBusy = false);
    }
  }

  Future<void> _editProfile() async {
    final a = _actor;
    if (a == null) return;
    final updated = await Navigator.of(context).push<pb.Actor>(
      MaterialPageRoute(builder: (_) => EditProfileScreen(actor: a)),
    );
    if (updated != null && mounted) setState(() => _actor = updated);
  }

  @override
  Widget build(BuildContext context) {
    final a = _actor;
    final session = context.watch<AppSession>();
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    if (_error != null) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text(_error!)),
      );
    }
    if (a == null) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              expandedHeight: 110,
              actions: [
                if (!isSelf && _actor != null)
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.more_vert),
                    onSelected: (v) => _moderate(switch (v) {
                      'mute' => pbe.ModAction.MOD_MUTE,
                      'unmute' => pbe.ModAction.MOD_UNMUTE,
                      'block' => pbe.ModAction.MOD_BLOCK,
                      _ => pbe.ModAction.MOD_UNBLOCK,
                    }),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: a.viewerMuted ? 'unmute' : 'mute',
                        child: Text(a.viewerMuted
                            ? 'Dejar de silenciar'
                            : 'Silenciar a @${a.handle}'),
                      ),
                      PopupMenuItem(
                        value: a.viewerBlocked ? 'unblock' : 'block',
                        child: Text(
                          a.viewerBlocked
                              ? 'Desbloquear'
                              : 'Bloquear a @${a.handle}',
                          style: TextStyle(
                              color: a.viewerBlocked ? null : Colors.red),
                        ),
                      ),
                    ],
                  ),
                if (isSelf) ...[
                  IconButton(
                    tooltip: 'Guardados',
                    icon: const Icon(Icons.bookmark_outline),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const BookmarksScreen()),
                    ),
                  ),
                  IconButton(
                    tooltip: 'Seguridad',
                    icon: const Icon(Icons.shield_outlined),
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SecurityScreen()),
                    ),
                  ),
                  IconButton(
                    tooltip: 'Cerrar sesión',
                    icon: const Icon(Icons.logout),
                    onPressed: () => session.logout(),
                  ),
                ],
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: GestureDetector(
                  onTap: () => _showFullScreenImage(a.bannerUrl, tag: '${a.handle}-banner'),
                  child: a.bannerUrl.isNotEmpty
                      ? Hero(
                          tag: '${a.handle}-banner',
                          child: Image.network(a.bannerUrl, fit: BoxFit.cover),
                        )
                      : Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [kBuzzBlue, Color(0xFF59B9FF)],
                            ),
                          ),
                        ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BuzzAvatar(
                          handle: a.handle,
                          displayName: a.displayName,
                          avatarUrl: a.avatarUrl,
                          online: a.online,
                          radius: 34,
                          onTap: () => _showFullScreenImage(a.avatarUrl, tag: '${a.handle}-avatar'),
                        ),
                        const Spacer(),
                        if (!isSelf) ...[
                          IconButton.outlined(
                            tooltip: 'Mensaje',
                            icon: const Icon(Icons.mail_outline, size: 20),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (_) => ChatScreen(peer: a)),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        if (isSelf)
                          OutlinedButton(
                            onPressed: _editProfile,
                            child: const Text('Editar perfil'),
                          )
                        else if (a.viewerFollowing)
                          OutlinedButton.icon(
                            onPressed: _followBusy ? null : _toggleFollow,
                            icon: const Icon(Icons.check, size: 18),
                            label: const Text('Siguiendo'),
                          )
                        else
                          FilledButton.icon(
                            onPressed: _followBusy ? null : _toggleFollow,
                            icon: const Icon(Icons.add, size: 18),
                            label: const Text('Seguir'),
                          ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Flexible(
                          child: NameWithBadge(
                            name: a.displayName.isEmpty ? a.handle : a.displayName,
                            verified: a.verified,
                            badgeSize: 19,
                            style: const TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w800),
                          ),
                        ),
                        if (a.followsViewer) ...[
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            decoration: BoxDecoration(
                              color: muted.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text('Te sigue',
                                style: TextStyle(fontSize: 11.5, color: muted)),
                          ),
                        ],
                      ],
                    ),
                    Text('@${a.handle}',
                        style: TextStyle(color: muted, fontSize: 14.5)),
                    if (a.bio.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(a.bio, style: const TextStyle(fontSize: 14.5)),
                    ],
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _Stat(
                          count: a.followersCount,
                          label: 'seguidores',
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) =>
                                    FollowsScreen(handle: a.handle, initialTab: 0)),
                          ),
                        ),
                        const SizedBox(width: 16),
                        _Stat(
                          count: a.followingCount,
                          label: 'siguiendo',
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) =>
                                    FollowsScreen(handle: a.handle, initialTab: 1)),
                          ),
                        ),
                        const SizedBox(width: 16),
                        _Stat(count: a.postsCount, label: 'posts'),
                        const SizedBox(width: 16),
                        _Stat(count: a.repliesCount, label: 'respuestas'),
                      ],
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ),
            ),
            if (_pinned != null)
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: Row(
                        children: [
                          Icon(Icons.push_pin,
                              size: 13,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withValues(alpha: 0.5)),
                          const SizedBox(width: 4),
                          Text(
                            'Fijado',
                            style: TextStyle(
                              fontSize: 12.5,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurface
                                  .withValues(alpha: 0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    PostCard(post: _pinned!),
                    const Divider(),
                  ],
                ),
              ),
            const SliverPersistentHeaderStickyTabs(),
          ],
          body: TabBarView(
            children: [
              FeedList(
                kind: pbe.FeedKind.FEED_AUTHOR,
                actorHandle: a.handle,
                emptyMessage: 'Sin posts todavía',
              ),
              FeedList(
                kind: pbe.FeedKind.FEED_AUTHOR_REPLIES,
                actorHandle: a.handle,
                emptyMessage: 'Sin respuestas todavía',
              ),
              FeedList(
                kind: pbe.FeedKind.FEED_LIKES,
                actorHandle: a.handle,
                emptyMessage: 'Sin me gusta todavía',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final int count;
  final String label;
  final VoidCallback? onTap;
  const _Stat({required this.count, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Row(
        children: [
          Text('$count',
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14.5)),
          const SizedBox(width: 4),
          Text(label, style: TextStyle(color: muted, fontSize: 14)),
        ],
      ),
    );
  }
}

/// Sticky "Posts / Respuestas / Me gusta" tab bar under the profile header.
class SliverPersistentHeaderStickyTabs extends StatelessWidget {
  const SliverPersistentHeaderStickyTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TabsDelegate(
        TabBar(
          labelColor: kBuzzBlue,
          indicatorColor: kBuzzBlue,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: const [
            Tab(text: 'Posts'),
            Tab(text: 'Respuestas'),
            Tab(text: 'Me gusta'),
          ],
        ),
        Theme.of(context).colorScheme.surface,
      ),
    );
  }
}

class _TabsDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;
  final Color background;
  _TabsDelegate(this.tabBar, this.background);

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlaps) {
    return Container(color: background, child: tabBar);
  }

  @override
  bool shouldRebuild(covariant _TabsDelegate old) =>
      old.tabBar != tabBar || old.background != background;
}
