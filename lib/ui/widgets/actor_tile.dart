// actor_tile.dart — reusable actor row with follow button (search, follows).

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../screens/profile_screen.dart';
import 'avatar.dart';
import 'verified_badge.dart';

class ActorTile extends StatefulWidget {
  final pb.Actor actor;
  const ActorTile({super.key, required this.actor});

  @override
  State<ActorTile> createState() => _ActorTileState();
}

class _ActorTileState extends State<ActorTile> {
  late pb.Actor actor;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    actor = widget.actor.deepCopy();
  }

  Future<void> _toggleFollow() async {
    if (_busy) return;
    setState(() => _busy = true);
    try {
      final updated = await context
          .read<AppSession>()
          .follow(actor.handle, undo: actor.viewerFollowing);
      if (mounted) setState(() => actor = updated);
    } catch (_) {
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final me = context.read<AppSession>().me;
    final isSelf = me != null && me.handle == actor.handle;
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    return ListTile(
      leading: BuzzAvatar(
        handle: actor.handle,
        displayName: actor.displayName,
        avatarUrl: actor.avatarUrl,
        online: actor.online,
      ),
      title: NameWithBadge(
        name: actor.displayName.isEmpty ? actor.handle : actor.displayName,
        verified: actor.verified,
      ),
      subtitle: Text(
        '@${actor.handle}'
        '${actor.bio.isNotEmpty ? ' · ${actor.bio}' : ''}',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: muted),
      ),
      trailing: isSelf
          ? null
          : actor.viewerFollowing
              ? OutlinedButton(
                  onPressed: _busy ? null : _toggleFollow,
                  child: const Text('Siguiendo'),
                )
              : FilledButton(
                  onPressed: _busy ? null : _toggleFollow,
                  child: const Text('Seguir'),
                ),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => ProfileScreen(handle: actor.handle)),
      ),
    );
  }
}
