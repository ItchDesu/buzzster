// post_card.dart — a single post in a feed or thread, Bluesky style.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/time.dart';
import '../screens/profile_screen.dart';
import '../screens/thread_screen.dart';
import '../theme.dart';
import 'avatar.dart';
import 'compose_sheet.dart';
import 'link_preview_card.dart';
import 'poll_view.dart';
import 'post_media.dart';
import 'quoted_post_card.dart';
import 'rich_post_text.dart';
import 'verified_badge.dart';

class PostCard extends StatefulWidget {
  final pb.Post post;
  final String repostedBy; // handle that surfaced this post, if any
  final bool isThreadRoot; // larger typography for the focused post
  final bool tappable;

  const PostCard({
    super.key,
    required this.post,
    this.repostedBy = '',
    this.isThreadRoot = false,
    this.tappable = true,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  late pb.Post post;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    post = widget.post.deepCopy();
  }

  @override
  void didUpdateWidget(covariant PostCard old) {
    super.didUpdateWidget(old);
    if (old.post.postId != widget.post.postId ||
        old.post.likeCount != widget.post.likeCount ||
        old.post.repostCount != widget.post.repostCount ||
        old.post.replyCount != widget.post.replyCount ||
        old.post.text != widget.post.text ||
        old.post.edited != widget.post.edited ||
        old.post.poll.totalVotes != widget.post.poll.totalVotes) {
      post = widget.post.deepCopy();
    }
  }

  Future<void> _repostMenu(AppSession session) async {
    final action = await showModalBottomSheet<String>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.repeat,
                  color: post.viewerReposted ? kRepostGreen : null),
              title: Text(post.viewerReposted ? 'Deshacer repost' : 'Repostear'),
              onTap: () => Navigator.pop(ctx, 'repost'),
            ),
            ListTile(
              leading: const Icon(Icons.format_quote),
              title: const Text('Citar'),
              onTap: () => Navigator.pop(ctx, 'quote'),
            ),
          ],
        ),
      ),
    );
    if (!mounted) return;
    if (action == 'repost') {
      await _toggleRepost(session);
    } else if (action == 'quote') {
      await showComposeSheet(context, quotePost: post);
    }
  }

  Future<void> _togglePin(AppSession session) async {
    final pinned = session.me?.pinnedPostId == post.postId;
    try {
      await session.pinPost(pinned ? '' : post.postId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(pinned ? 'Post desfijado' : 'Post fijado en tu perfil'),
          behavior: SnackBarBehavior.floating,
        ));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _toggleBookmark(AppSession session) async {
    try {
      final saved = await session.bookmark(post.postId, undo: post.viewerBookmarked);
      setState(() => post.viewerBookmarked = saved);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(saved ? 'Post guardado' : 'Quitado de guardados'),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
        ));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _editPost(AppSession session) async {
    final ctrl = TextEditingController(text: post.text);
    final saved = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Editar post'),
        content: TextField(
          controller: ctrl,
          maxLines: 5,
          maxLength: 300,
          autofocus: true,
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Guardar')),
        ],
      ),
    );
    if (saved != true || !mounted) return;
    try {
      final updated = await session.editPost(post.postId, ctrl.text.trim());
      setState(() => post = updated.deepCopy());
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _deletePost(AppSession session) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('¿Eliminar post?'),
        content: const Text('Esta acción no se puede deshacer.'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancelar')),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    try {
      await session.deletePost(post.postId);
      // La eliminación en las listas llega por el evento en vivo del servidor.
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  Future<void> _toggleLike(AppSession session) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      // Optimistic flip.
      post.viewerLiked = !post.viewerLiked;
      post.likeCount = post.likeCount + (post.viewerLiked ? 1 : -1);
    });
    try {
      final r = await session.like(post.postId, undo: !post.viewerLiked);
      setState(() {
        post.likeCount = r.likeCount;
        post.viewerLiked = r.viewerLiked;
      });
    } catch (_) {
      setState(() {
        post.viewerLiked = !post.viewerLiked;
        post.likeCount = post.likeCount + (post.viewerLiked ? 1 : -1);
      });
    } finally {
      setState(() => _busy = false);
    }
  }

  Future<void> _toggleRepost(AppSession session) async {
    if (_busy) return;
    setState(() {
      _busy = true;
      post.viewerReposted = !post.viewerReposted;
      post.repostCount = post.repostCount + (post.viewerReposted ? 1 : -1);
    });
    try {
      final r = await session.repost(post.postId, undo: !post.viewerReposted);
      setState(() {
        post.repostCount = r.repostCount;
        post.viewerReposted = r.viewerReposted;
      });
    } catch (_) {
      setState(() {
        post.viewerReposted = !post.viewerReposted;
        post.repostCount = post.repostCount + (post.viewerReposted ? 1 : -1);
      });
    } finally {
      setState(() => _busy = false);
    }
  }

  void _openThread() {
    if (!widget.tappable) return;
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ThreadScreen(postId: post.postId)),
    );
  }

  void _openProfile() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ProfileScreen(handle: post.author.handle)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final session = context.read<AppSession>();
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    final author = post.author;

    return InkWell(
      onTap: widget.tappable ? _openThread : null,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 10, 14, 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.repostedBy.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(left: 34, bottom: 4),
                child: Row(
                  children: [
                    Icon(Icons.repeat, size: 14, color: muted),
                    const SizedBox(width: 5),
                    Text(
                      'Reposteado por @${widget.repostedBy}',
                      style: TextStyle(fontSize: 12.5, color: muted),
                    ),
                  ],
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuzzAvatar(
                  handle: author.handle,
                  displayName: author.displayName,
                  avatarUrl: author.avatarUrl,
                  radius: widget.isThreadRoot ? 24 : 21,
                  onTap: _openProfile,
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: GestureDetector(
                              onTap: _openProfile,
                              child: NameWithBadge(
                                name: author.displayName.isEmpty
                                    ? author.handle
                                    : author.displayName,
                                verified: author.verified,
                              ),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              '@${author.handle}',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: muted, fontSize: 13.5),
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '· ${relativeTime(post.createdAt)}'
                            '${post.edited ? ' · editado' : ''}',
                            style: TextStyle(color: muted, fontSize: 13.5),
                          ),
                          const Spacer(),
                          _PostMenu(
                            isOwn: context.read<AppSession>().me?.userId ==
                                post.author.userId,
                            bookmarked: post.viewerBookmarked,
                            pinned: context.read<AppSession>().me?.pinnedPostId ==
                                post.postId,
                            onBookmark: () =>
                                _toggleBookmark(context.read<AppSession>()),
                            onEdit: () => _editPost(context.read<AppSession>()),
                            onDelete: () =>
                                _deletePost(context.read<AppSession>()),
                            onPin: () => _togglePin(context.read<AppSession>()),
                          ),
                        ],
                      ),
                      if (post.replyToHandle.isNotEmpty && !widget.isThreadRoot)
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Text(
                            'En respuesta a @${post.replyToHandle}',
                            style: TextStyle(fontSize: 12.5, color: kBuzzBlue.withValues(alpha: 0.9)),
                          ),
                        ),
                      const SizedBox(height: 3),
                      if (post.text.isNotEmpty)
                        RichPostText(
                          text: post.text,
                          fontSize: widget.isThreadRoot ? 18 : 15,
                        ),
                      PostMedia(media: post.media),
                      if (post.hasQuotedPost())
                        QuotedPostCard(post: post.quotedPost),
                      if (post.hasPoll())
                        PollView(postId: post.postId, poll: post.poll),
                      if (post.hasLinkPreview())
                        LinkPreviewCard(preview: post.linkPreview),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _ActionButton(
                            icon: Icons.chat_bubble_outline,
                            count: post.replyCount,
                            color: muted,
                            onTap: () => showComposeSheet(context, replyTo: post),
                          ),
                          _ActionButton(
                            icon: Icons.repeat,
                            count: post.repostCount,
                            color: post.viewerReposted ? kRepostGreen : muted,
                            bold: post.viewerReposted,
                            onTap: () => _repostMenu(session),
                          ),
                          _ActionButton(
                            icon: post.viewerLiked ? Icons.favorite : Icons.favorite_border,
                            count: post.likeCount,
                            color: post.viewerLiked ? kLikeRed : muted,
                            bold: post.viewerLiked,
                            onTap: () => _toggleLike(session),
                          ),
                          _ActionButton(
                            icon: Icons.bar_chart,
                            count: post.views.toInt(),
                            color: muted,
                            onTap: _openThread,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PostMenu extends StatelessWidget {
  final bool isOwn;
  final bool bookmarked;
  final bool pinned;
  final VoidCallback onBookmark;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onPin;

  const _PostMenu({
    required this.isOwn,
    required this.bookmarked,
    required this.pinned,
    required this.onBookmark,
    required this.onEdit,
    required this.onDelete,
    required this.onPin,
  });

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.45);
    return PopupMenuButton<String>(
      padding: EdgeInsets.zero,
      iconSize: 17,
      icon: Icon(Icons.more_horiz, color: muted),
      onSelected: (value) {
        switch (value) {
          case 'bookmark':
            onBookmark();
          case 'edit':
            onEdit();
          case 'delete':
            onDelete();
          case 'pin':
            onPin();
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'bookmark',
          child: ListTile(
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: Icon(bookmarked ? Icons.bookmark : Icons.bookmark_outline),
            title: Text(bookmarked ? 'Quitar de guardados' : 'Guardar'),
          ),
        ),
        if (isOwn) ...[
          PopupMenuItem(
            value: 'pin',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Icon(pinned ? Icons.push_pin : Icons.push_pin_outlined),
              title: Text(pinned ? 'Desfijar del perfil' : 'Fijar en el perfil'),
            ),
          ),
          const PopupMenuItem(
            value: 'edit',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.edit_outlined),
              title: Text('Editar'),
            ),
          ),
          const PopupMenuItem(
            value: 'delete',
            child: ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.delete_outline, color: Colors.red),
              title: Text('Eliminar', style: TextStyle(color: Colors.red)),
            ),
          ),
        ],
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final int count;
  final Color color;
  final bool bold;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.count,
    required this.color,
    required this.onTap,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          children: [
            Icon(icon, size: 18, color: color),
            if (count > 0) ...[
              const SizedBox(width: 5),
              Text(
                '$count',
                style: TextStyle(
                  fontSize: 13,
                  color: color,
                  fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
