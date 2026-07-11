// conversations_screen.dart — bandeja de mensajes directos.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/time.dart';
import '../theme.dart';
import '../widgets/avatar.dart';
import '../widgets/verified_badge.dart';
import 'chat_screen.dart';

class ConversationsScreen extends StatefulWidget {
  const ConversationsScreen({super.key});

  @override
  State<ConversationsScreen> createState() => _ConversationsScreenState();
}

class _ConversationsScreenState extends State<ConversationsScreen>
    with AutomaticKeepAliveClientMixin {
  List<pb.Conversation> _convs = [];
  bool _loading = false;
  StreamSubscription<pb.UpdateDmReceived>? _dmSub;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _dmSub = context.read<AppSession>().dmEvents.listen((_) => _refresh());
    _refresh();
  }

  @override
  void dispose() {
    _dmSub?.cancel();
    super.dispose();
  }

  Future<void> _refresh() async {
    if (_loading) return;
    setState(() => _loading = true);
    try {
      final (convs, _, _) = await context.read<AppSession>().getConversations();
      if (mounted) setState(() => _convs = convs);
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
      appBar: AppBar(title: const Text('Mensajes')),
      body: _convs.isEmpty && _loading
          ? const Center(child: CircularProgressIndicator())
          : _convs.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline, size: 44, color: muted),
                      const SizedBox(height: 10),
                      Text(
                        'Sin mensajes todavía.\nEscribe a alguien desde su perfil.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: muted),
                      ),
                    ],
                  ),
                )
              : RefreshIndicator(
                  onRefresh: _refresh,
                  child: ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: _convs.length,
                    separatorBuilder: (_, _) => const Divider(indent: 72),
                    itemBuilder: (context, i) {
                      final c = _convs[i];
                      final peer = c.peer;
                      final last = c.lastMessage;
                      return ListTile(
                        leading: BuzzAvatar(
                          handle: peer.handle,
                          displayName: peer.displayName,
                          avatarUrl: peer.avatarUrl,
                        ),
                        title: Row(
                          children: [
                            Flexible(
                              child: NameWithBadge(
                                name: peer.displayName.isEmpty
                                    ? peer.handle
                                    : peer.displayName,
                                verified: peer.verified,
                              ),
                            ),
                            if (peer.online)
                              Container(
                                margin: const EdgeInsets.only(left: 6),
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: kRepostGreen,
                                  shape: BoxShape.circle,
                                ),
                              ),
                          ],
                        ),
                        subtitle: Text(
                          '${last.mine ? "Tú: " : ""}${last.text}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: muted,
                            fontWeight: c.unreadCount > 0
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(relativeTime(last.createdAt),
                                style: TextStyle(color: muted, fontSize: 12.5)),
                            if (c.unreadCount > 0)
                              Container(
                                margin: const EdgeInsets.only(top: 4),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 1),
                                decoration: BoxDecoration(
                                  color: kBuzzBlue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${c.unreadCount}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 11.5),
                                ),
                              ),
                          ],
                        ),
                        onTap: () async {
                          await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ChatScreen(peer: peer),
                            ),
                          );
                          _refresh();
                        },
                      );
                    },
                  ),
                ),
    );
  }
}
