// chat_screen.dart — conversación 1:1 con burbujas y entrega en vivo.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/time.dart';
import '../theme.dart';
import '../widgets/avatar.dart';
import '../widgets/verified_badge.dart';
import 'profile_screen.dart';

class ChatScreen extends StatefulWidget {
  final pb.Actor peer;
  const ChatScreen({super.key, required this.peer});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messages = <pb.DmMessage>[]; // más recientes primero
  final _input = TextEditingController();
  final _scroll = ScrollController();
  StreamSubscription<pb.UpdateDmReceived>? _dmSub;
  bool _sending = false;

  @override
  void initState() {
    super.initState();
    final session = context.read<AppSession>();
    _dmSub = session.dmEvents.listen((dm) {
      // Solo mensajes de esta conversación.
      if (dm.from.handle == widget.peer.handle && !dm.message.mine) {
        if (mounted) setState(() => _messages.insert(0, dm.message));
        // Marcarlo leído en el servidor.
        session.getMessages(widget.peer.handle);
        session.dmUnread = (session.dmUnread - 1).clamp(0, 1 << 30);
      }
    });
    _load();
  }

  @override
  void dispose() {
    _dmSub?.cancel();
    _input.dispose();
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    try {
      final (_, messages, _) =
          await context.read<AppSession>().getMessages(widget.peer.handle);
      if (mounted) {
        setState(() {
          _messages
            ..clear()
            ..addAll(messages);
        });
        context.read<AppSession>().refreshDmUnread();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _send() async {
    final text = _input.text.trim();
    if (text.isEmpty || _sending) return;
    setState(() => _sending = true);
    try {
      final msg =
          await context.read<AppSession>().sendDm(widget.peer.handle, text);
      setState(() {
        _messages.insert(0, msg);
        _input.clear();
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    } finally {
      if (mounted) setState(() => _sending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final peer = widget.peer;
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => ProfileScreen(handle: peer.handle)),
          ),
          child: Row(
            children: [
              BuzzAvatar(
                handle: peer.handle,
                displayName: peer.displayName,
                avatarUrl: peer.avatarUrl,
                radius: 17,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameWithBadge(
                      name: peer.displayName.isEmpty
                          ? peer.handle
                          : peer.displayName,
                      verified: peer.verified,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      peer.online ? 'En línea' : '@${peer.handle}',
                      style: TextStyle(
                        fontSize: 12,
                        color: peer.online ? kRepostGreen : muted,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? Center(
                    child: Text('Di hola 👋', style: TextStyle(color: muted)),
                  )
                : ListView.builder(
                    controller: _scroll,
                    reverse: true,
                    padding: const EdgeInsets.all(12),
                    itemCount: _messages.length,
                    itemBuilder: (context, i) => _Bubble(m: _messages[i]),
                  ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _input,
                      minLines: 1,
                      maxLines: 4,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _send(),
                      decoration:
                          const InputDecoration(hintText: 'Escribe un mensaje'),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    onPressed: _sending ? null : _send,
                    icon: const Icon(Icons.send),
                    style: IconButton.styleFrom(backgroundColor: kBuzzBlue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  final pb.DmMessage m;
  const _Bubble({required this.m});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final mine = m.mine;
    return Align(
      alignment: mine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: mine ? kBuzzBlue : scheme.onSurface.withValues(alpha: 0.08),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: Radius.circular(mine ? 16 : 4),
            bottomRight: Radius.circular(mine ? 4 : 16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              m.text,
              style: TextStyle(
                color: mine ? Colors.white : scheme.onSurface,
                fontSize: 14.5,
                height: 1.3,
              ),
            ),
            Text(
              relativeTime(m.createdAt),
              style: TextStyle(
                fontSize: 10.5,
                color: mine
                    ? Colors.white.withValues(alpha: 0.7)
                    : scheme.onSurface.withValues(alpha: 0.45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
