// notifications_screen.dart — likes, reposts, follows and replies.

import 'package:flutter/material.dart' hide Notification;
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/time.dart';
import '../theme.dart';
import '../widgets/avatar.dart';
import 'profile_screen.dart';
import 'thread_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => NotificationsScreenState();
}

class NotificationsScreenState extends State<NotificationsScreen>
    with AutomaticKeepAliveClientMixin {
  final _items = <pb.Notification>[];
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
    refresh();
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  Future<void> refresh() async {
    _cursor = '';
    _exhausted = false;
    _items.clear();
    await _loadPage();
  }

  Future<void> _loadPage() async {
    if (_loading || _exhausted) return;
    setState(() => _loading = true);
    try {
      final page = await context
          .read<AppSession>()
          .getNotifications(cursor: _cursor, markRead: true);
      if (!mounted) return;
      setState(() {
        _items.addAll(page.items);
        _cursor = page.nextCursor;
        _exhausted = page.nextCursor.isEmpty;
      });
    } catch (_) {
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    return Scaffold(
      appBar: AppBar(title: const Text('Notificaciones')),
      body: _items.isEmpty && _loading
          ? const Center(child: CircularProgressIndicator())
          : _items.isEmpty
              ? Center(
                  child: Text('Nada nuevo por ahora',
                      style: TextStyle(color: muted)),
                )
              : RefreshIndicator(
                  onRefresh: refresh,
                  child: ListView.separated(
                    controller: _scroll,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: _items.length,
                    separatorBuilder: (_, _) => const Divider(indent: 72),
                    itemBuilder: (context, i) => _NotifTile(n: _items[i]),
                  ),
                ),
    );
  }
}

class _NotifTile extends StatelessWidget {
  final pb.Notification n;
  const _NotifTile({required this.n});

  (IconData, Color, String) get _style => switch (n.kind) {
        'like' => (Icons.favorite, kLikeRed, 'le dio me gusta a tu post'),
        'repost' => (Icons.repeat, kRepostGreen, 'reposteó tu post'),
        'follow' => (Icons.person_add_alt_1, kBuzzBlue, 'te empezó a seguir'),
        'reply' => (Icons.chat_bubble, kBuzzBlue, 'respondió a tu post'),
        'mention' => (Icons.alternate_email, kBuzzBlue, 'te mencionó'),
        'quote' => (Icons.format_quote, kBuzzBlue, 'citó tu post'),
        _ => (Icons.notifications, kBuzzBlue, n.kind),
      };

  @override
  Widget build(BuildContext context) {
    final (icon, color, label) = _style;
    final actor = n.actor;
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    final name = actor.displayName.isEmpty ? actor.handle : actor.displayName;

    return ListTile(
      onTap: () {
        if (n.postId.isNotEmpty) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ThreadScreen(postId: n.postId)),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (_) => ProfileScreen(handle: actor.handle)),
          );
        }
      },
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          BuzzAvatar(handle: actor.handle, displayName: actor.displayName, avatarUrl: actor.avatarUrl),
          Positioned(
            right: -4,
            bottom: -4,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 14, color: color),
            ),
          ),
        ],
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 14.5,
          ),
          children: [
            TextSpan(
                text: name, style: const TextStyle(fontWeight: FontWeight.w700)),
            TextSpan(text: ' $label'),
          ],
        ),
      ),
      subtitle: n.postText.isEmpty
          ? null
          : Text(
              n.postText,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: muted, fontSize: 13.5),
            ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(relativeTime(n.createdAt),
              style: TextStyle(color: muted, fontSize: 12.5)),
          if (!n.read)
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: 8,
              height: 8,
              decoration:
                  const BoxDecoration(color: kBuzzBlue, shape: BoxShape.circle),
            ),
        ],
      ),
    );
  }
}
