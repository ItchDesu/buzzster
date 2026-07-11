// poll_view.dart — encuesta de un post: votar y ver resultados en vivo.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../theme.dart';

class PollView extends StatefulWidget {
  final String postId;
  final pb.Poll poll;
  const PollView({super.key, required this.postId, required this.poll});

  @override
  State<PollView> createState() => _PollViewState();
}

class _PollViewState extends State<PollView> {
  late pb.Poll poll;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    poll = widget.poll.deepCopy();
  }

  @override
  void didUpdateWidget(covariant PollView old) {
    super.didUpdateWidget(old);
    if (old.poll.totalVotes != widget.poll.totalVotes ||
        old.poll.viewerVote != widget.poll.viewerVote) {
      // Conservar el voto local si el evento en vivo no lo trae.
      final localVote = poll.viewerVote;
      poll = widget.poll.deepCopy();
      if (poll.viewerVote == -1 && localVote != -1) poll.viewerVote = localVote;
    }
  }

  bool get _ended =>
      DateTime.now().millisecondsSinceEpoch ~/ 1000 > poll.endsAt.toInt();
  bool get _voted => poll.viewerVote != -1;
  bool get _showResults => _voted || _ended;

  Future<void> _vote(int index) async {
    if (_busy || _showResults) return;
    setState(() => _busy = true);
    try {
      final updated = await context.read<AppSession>().votePoll(widget.postId, index);
      if (mounted) setState(() => poll = updated.deepCopy());
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String get _timeLeft {
    final secs = poll.endsAt.toInt() -
        DateTime.now().millisecondsSinceEpoch ~/ 1000;
    if (secs <= 0) return 'Encuesta finalizada';
    if (secs >= 86400) return 'Quedan ${secs ~/ 86400}d';
    if (secs >= 3600) return 'Quedan ${secs ~/ 3600}h';
    return 'Quedan ${secs ~/ 60}m';
  }

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    final total = poll.totalVotes == 0 ? 1 : poll.totalVotes;

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < poll.options.length; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: _showResults
                  ? _ResultBar(
                      text: poll.options[i].text,
                      votes: poll.options[i].votes,
                      pct: poll.options[i].votes / total,
                      chosen: poll.viewerVote == i,
                    )
                  : OutlinedButton(
                      onPressed: _busy ? null : () => _vote(i),
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size.fromHeight(38),
                        side: const BorderSide(color: kBuzzBlue),
                        foregroundColor: kBuzzBlue,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(poll.options[i].text),
                      ),
                    ),
            ),
          Text(
            '${poll.totalVotes} ${poll.totalVotes == 1 ? "voto" : "votos"} · $_timeLeft',
            style: TextStyle(fontSize: 12.5, color: muted),
          ),
        ],
      ),
    );
  }
}

class _ResultBar extends StatelessWidget {
  final String text;
  final int votes;
  final double pct;
  final bool chosen;

  const _ResultBar({
    required this.text,
    required this.votes,
    required this.pct,
    required this.chosen,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          Container(height: 36, color: scheme.onSurface.withValues(alpha: 0.06)),
          AnimatedFractionallySizedBox(
            duration: const Duration(milliseconds: 300),
            widthFactor: pct.clamp(0.02, 1.0),
            child: Container(
              height: 36,
              color: kBuzzBlue.withValues(alpha: chosen ? 0.45 : 0.2),
            ),
          ),
          SizedBox(
            height: 36,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            text,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13.5,
                              fontWeight:
                                  chosen ? FontWeight.w700 : FontWeight.w500,
                            ),
                          ),
                        ),
                        if (chosen)
                          const Padding(
                            padding: EdgeInsets.only(left: 4),
                            child: Icon(Icons.check_circle,
                                size: 14, color: kBuzzBlue),
                          ),
                      ],
                    ),
                  ),
                  Text('${(pct * 100).round()}%',
                      style: const TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
