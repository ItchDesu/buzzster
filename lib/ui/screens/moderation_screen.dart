// moderation_screen.dart — cuentas silenciadas y bloqueadas, con deshacer.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../proto/btdlib.pbenum.dart' as pbe;
import '../../state/session.dart';
import '../theme.dart';
import '../widgets/avatar.dart';
import '../widgets/verified_badge.dart';
import 'profile_screen.dart';

class ModerationScreen extends StatelessWidget {
  const ModerationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Silenciados y bloqueados'),
          bottom: const TabBar(
            labelColor: kBuzzBlue,
            indicatorColor: kBuzzBlue,
            tabs: [Tab(text: 'Silenciados'), Tab(text: 'Bloqueados')],
          ),
        ),
        body: const TabBarView(
          children: [
            _ModList(kind: pbe.ModerationKind.MOD_LIST_MUTED),
            _ModList(kind: pbe.ModerationKind.MOD_LIST_BLOCKED),
          ],
        ),
      ),
    );
  }
}

class _ModList extends StatefulWidget {
  final pbe.ModerationKind kind;
  const _ModList({required this.kind});

  @override
  State<_ModList> createState() => _ModListState();
}

class _ModListState extends State<_ModList>
    with AutomaticKeepAliveClientMixin {
  List<pb.Actor>? _actors;
  String? _error;

  bool get _blocked => widget.kind == pbe.ModerationKind.MOD_LIST_BLOCKED;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final list = await context.read<AppSession>().moderationList(widget.kind);
      if (mounted) setState(() => _actors = list);
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  Future<void> _undo(pb.Actor actor) async {
    final action = _blocked
        ? pbe.ModAction.MOD_UNBLOCK
        : pbe.ModAction.MOD_UNMUTE;
    try {
      await context.read<AppSession>().moderate(actor.handle, action);
      if (mounted) {
        setState(() => _actors?.removeWhere((a) => a.userId == actor.userId));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(_blocked
              ? 'Has desbloqueado a @${actor.handle}'
              : 'Has dejado de silenciar a @${actor.handle}'),
        ));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    if (_error != null) return Center(child: Text(_error!));
    if (_actors == null) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_actors!.isEmpty) {
      return RefreshIndicator(
        onRefresh: _load,
        child: ListView(
          children: [
            const SizedBox(height: 120),
            Icon(_blocked ? Icons.block : Icons.volume_off,
                size: 44, color: muted),
            const SizedBox(height: 12),
            Center(
              child: Text(
                _blocked
                    ? 'No has bloqueado a nadie'
                    : 'No has silenciado a nadie',
                style: TextStyle(color: muted),
              ),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _load,
      child: ListView.separated(
        itemCount: _actors!.length,
        separatorBuilder: (_, _) => const Divider(indent: 72),
        itemBuilder: (context, i) {
          final a = _actors![i];
          return ListTile(
            leading: BuzzAvatar(
              handle: a.handle,
              displayName: a.displayName,
              avatarUrl: a.avatarUrl,
            ),
            title: NameWithBadge(
              name: a.displayName.isEmpty ? a.handle : a.displayName,
              verified: a.verified,
            ),
            subtitle: Text('@${a.handle}', style: TextStyle(color: muted)),
            trailing: OutlinedButton(
              onPressed: () => _undo(a),
              child: Text(_blocked ? 'Desbloquear' : 'Reactivar'),
            ),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (_) => ProfileScreen(handle: a.handle)),
            ),
          );
        },
      ),
    );
  }
}
