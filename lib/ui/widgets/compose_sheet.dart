// compose_sheet.dart — modal composer for new posts and replies,
// with image/video attachments uploaded to the object store.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/mime.dart';
import '../theme.dart';
import 'avatar.dart';
import 'quoted_post_card.dart';

const _maxChars = 300;
const _maxImages = 4;

/// Shows the composer. Resolves to the created post, or null when dismissed.
Future<pb.Post?> showComposeSheet(
  BuildContext context, {
  pb.Post? replyTo,
  pb.Post? quotePost,
}) {
  return showModalBottomSheet<pb.Post>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (_) => _ComposeSheet(replyTo: replyTo, quotePost: quotePost),
  );
}

enum _UploadStatus { uploading, done, error }

class _Attachment {
  final File file;
  final String mime;
  final bool isVideo;
  _UploadStatus status = _UploadStatus.uploading;
  String mediaId = '';
  _Attachment(this.file, this.mime) : isVideo = isVideoMime(mime);
}

class _ComposeSheet extends StatefulWidget {
  final pb.Post? replyTo;
  final pb.Post? quotePost;
  const _ComposeSheet({this.replyTo, this.quotePost});

  @override
  State<_ComposeSheet> createState() => _ComposeSheetState();
}

class _ComposeSheetState extends State<_ComposeSheet> {
  final _controller = TextEditingController();
  final _picker = ImagePicker();
  final _attachments = <_Attachment>[];
  bool _sending = false;

  // Encuesta
  bool _pollActive = false;
  final _pollCtrls = [TextEditingController(), TextEditingController()];
  int _pollHours = 24;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool get _uploading =>
      _attachments.any((a) => a.status == _UploadStatus.uploading);
  bool get _hasVideo => _attachments.any((a) => a.isVideo);

  List<String> get _pollOptions => _pollCtrls
      .map((c) => c.text.trim())
      .where((t) => t.isNotEmpty)
      .toList();

  bool get _canPublish {
    final hasContent = _controller.text.trim().isNotEmpty ||
        _attachments.any((a) => a.status == _UploadStatus.done) ||
        widget.quotePost != null;
    final remaining = _maxChars - _controller.text.characters.length;
    final pollOk = !_pollActive || _pollOptions.length >= 2;
    return hasContent && pollOk && !_sending && !_uploading && remaining >= 0;
  }

  void _toast(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  Future<void> _pickImages() async {
    if (_hasVideo) {
      _toast('Un vídeo no puede combinarse con imágenes');
      return;
    }
    final picked = await _picker.pickMultiImage(limit: _maxImages);
    for (final x in picked) {
      if (_attachments.length >= _maxImages) break;
      await _addAttachment(x);
    }
  }

  Future<void> _pickVideo() async {
    if (_attachments.isNotEmpty) {
      _toast('El vídeo debe ir solo en el post');
      return;
    }
    final x = await _picker.pickVideo(source: ImageSource.gallery);
    if (x != null) await _addAttachment(x);
  }

  Future<void> _addAttachment(XFile x) async {
    final mime = x.mimeType ?? mimeFromPath(x.path);
    if (mime == null) {
      _toast('Formato no soportado: ${x.name}');
      return;
    }
    final att = _Attachment(File(x.path), mime);
    setState(() => _attachments.add(att));

    try {
      final r = await context.read<AppSession>().uploadMedia(att.file, mime);
      setState(() {
        att.mediaId = r.mediaId;
        att.status = _UploadStatus.done;
      });
    } catch (e) {
      setState(() => att.status = _UploadStatus.error);
      _toast('$e');
    }
  }

  Future<void> _publish() async {
    if (!_canPublish) return;
    setState(() => _sending = true);
    final session = context.read<AppSession>();
    try {
      final post = await session.createPost(
        _controller.text.trim(),
        replyTo: widget.replyTo?.postId ?? '',
        mediaIds: _attachments
            .where((a) => a.status == _UploadStatus.done)
            .map((a) => a.mediaId)
            .toList(),
        quotedPostId: widget.quotePost?.postId ?? '',
        pollOptions: _pollActive ? _pollOptions : const [],
        pollDurationHours: _pollHours,
      );
      if (mounted) Navigator.of(context).pop(post);
    } catch (e) {
      if (mounted) {
        setState(() => _sending = false);
        _toast('$e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final session = context.watch<AppSession>();
    final me = session.me;
    final remaining = _maxChars - _controller.text.characters.length;
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: _sending ? null : () => Navigator.of(context).pop(),
                    child: const Text('Cancelar'),
                  ),
                  const Spacer(),
                  FilledButton(
                    onPressed: _canPublish ? _publish : null,
                    child: _sending
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : Text(widget.replyTo == null ? 'Publicar' : 'Responder'),
                  ),
                ],
              ),
              if (widget.replyTo != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    children: [
                      Icon(Icons.subdirectory_arrow_right, size: 16, color: muted),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          'Respondiendo a @${widget.replyTo!.author.handle}: '
                          '${widget.replyTo!.text}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: muted, fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (me != null)
                    BuzzAvatar(
                        handle: me.handle,
                        displayName: me.displayName,
                        avatarUrl: me.avatarUrl,
                        radius: 20),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      autofocus: true,
                      maxLines: 6,
                      minLines: 3,
                      onChanged: (_) => setState(() {}),
                      decoration: InputDecoration(
                        hintText: widget.replyTo == null
                            ? '¿Qué está pasando?'
                            : 'Escribe tu respuesta',
                        fillColor: Colors.transparent,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
              if (widget.quotePost != null)
                QuotedPostCard(post: widget.quotePost!),
              if (_pollActive)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Column(
                    children: [
                      for (var i = 0; i < _pollCtrls.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: TextField(
                            controller: _pollCtrls[i],
                            maxLength: 50,
                            onChanged: (_) => setState(() {}),
                            decoration: InputDecoration(
                              counterText: '',
                              hintText: 'Opción ${i + 1}',
                              isDense: true,
                              suffixIcon: _pollCtrls.length > 2
                                  ? IconButton(
                                      icon: const Icon(Icons.close, size: 16),
                                      onPressed: () => setState(
                                          () => _pollCtrls.removeAt(i)),
                                    )
                                  : null,
                            ),
                          ),
                        ),
                      Row(
                        children: [
                          if (_pollCtrls.length < 4)
                            TextButton.icon(
                              onPressed: () => setState(() =>
                                  _pollCtrls.add(TextEditingController())),
                              icon: const Icon(Icons.add, size: 16),
                              label: const Text('Opción'),
                            ),
                          const Spacer(),
                          DropdownButton<int>(
                            value: _pollHours,
                            underline: const SizedBox.shrink(),
                            items: const [
                              DropdownMenuItem(value: 1, child: Text('1 hora')),
                              DropdownMenuItem(value: 6, child: Text('6 horas')),
                              DropdownMenuItem(value: 24, child: Text('1 día')),
                              DropdownMenuItem(value: 72, child: Text('3 días')),
                              DropdownMenuItem(value: 168, child: Text('7 días')),
                            ],
                            onChanged: (v) =>
                                setState(() => _pollHours = v ?? 24),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (_attachments.isNotEmpty)
                SizedBox(
                  height: 76,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: _attachments.length,
                    separatorBuilder: (_, _) => const SizedBox(width: 8),
                    itemBuilder: (context, i) =>
                        _AttachmentThumb(
                          attachment: _attachments[i],
                          onRemove: () =>
                              setState(() => _attachments.removeAt(i)),
                        ),
                  ),
                ),
              Row(
                children: [
                  IconButton(
                    tooltip: 'Añadir imágenes',
                    icon: const Icon(Icons.image_outlined, color: kBuzzBlue),
                    onPressed: _attachments.length >= _maxImages ||
                            _hasVideo ||
                            _sending ||
                            _pollActive
                        ? null
                        : _pickImages,
                  ),
                  IconButton(
                    tooltip: 'Añadir vídeo',
                    icon: const Icon(Icons.videocam_outlined, color: kBuzzBlue),
                    onPressed: _attachments.isNotEmpty || _sending || _pollActive
                        ? null
                        : _pickVideo,
                  ),
                  IconButton(
                    tooltip: 'Encuesta',
                    icon: Icon(
                      Icons.poll_outlined,
                      color: _pollActive ? kRepostGreen : kBuzzBlue,
                    ),
                    onPressed: _attachments.isNotEmpty || _sending
                        ? null
                        : () => setState(() => _pollActive = !_pollActive),
                  ),
                  const Spacer(),
                  if (_uploading)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 13,
                            height: 13,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          const SizedBox(width: 6),
                          Text('Subiendo…',
                              style: TextStyle(fontSize: 12.5, color: muted)),
                        ],
                      ),
                    ),
                  Text(
                    '$remaining',
                    style: TextStyle(
                      fontSize: 13,
                      color: remaining < 0
                          ? Colors.red
                          : remaining < 30
                              ? Colors.orange
                              : muted,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AttachmentThumb extends StatelessWidget {
  final _Attachment attachment;
  final VoidCallback onRemove;
  const _AttachmentThumb({required this.attachment, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 72,
            height: 72,
            child: attachment.isVideo
                ? Container(
                    color: Colors.black87,
                    child:
                        const Icon(Icons.play_circle, color: Colors.white, size: 30),
                  )
                : Image.file(attachment.file, fit: BoxFit.cover),
          ),
        ),
        if (attachment.status == _UploadStatus.uploading)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: Colors.white),
                ),
              ),
            ),
          ),
        if (attachment.status == _UploadStatus.error)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red.withValues(alpha: 0.55),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.error, color: Colors.white),
            ),
          ),
        Positioned(
          top: 2,
          right: 2,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, size: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
