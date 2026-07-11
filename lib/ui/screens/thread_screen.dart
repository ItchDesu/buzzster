// thread_screen.dart — a focused post with its ancestors and replies.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../widgets/compose_sheet.dart';
import '../widgets/post_card.dart';

class ThreadScreen extends StatefulWidget {
  final String postId;
  const ThreadScreen({super.key, required this.postId});

  @override
  State<ThreadScreen> createState() => _ThreadScreenState();
}

class _ThreadScreenState extends State<ThreadScreen> {
  pb.GetThreadResult? _thread;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final t = await context.read<AppSession>().getThread(widget.postId);
      if (mounted) setState(() => _thread = t);
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = _thread;
    return Scaffold(
      appBar: AppBar(title: const Text('Hilo')),
      body: _error != null
          ? Center(child: Text(_error!))
          : t == null
              ? const Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: _load,
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    children: [
                      for (final p in t.ancestors) ...[
                        PostCard(post: p),
                        const Divider(indent: 60),
                      ],
                      PostCard(post: t.post, isThreadRoot: true, tappable: false),
                      const Divider(thickness: 4),
                      if (t.replies.isEmpty)
                        Padding(
                          padding: const EdgeInsets.all(28),
                          child: Center(
                            child: Text(
                              'Sin respuestas todavía',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurface
                                    .withValues(alpha: 0.5),
                              ),
                            ),
                          ),
                        )
                      else
                        for (final p in t.replies) ...[
                          PostCard(post: p),
                          const Divider(),
                        ],
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
      floatingActionButton: t == null
          ? null
          : FloatingActionButton.extended(
              icon: const Icon(Icons.reply),
              label: const Text('Responder'),
              onPressed: () async {
                final created = await showComposeSheet(context, replyTo: t.post);
                if (created != null) _load();
              },
            ),
    );
  }
}
