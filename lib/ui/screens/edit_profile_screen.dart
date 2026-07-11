// edit_profile_screen.dart — nombre, bio, avatar y banner.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/mime.dart';
import '../theme.dart';
import '../widgets/avatar.dart';

class EditProfileScreen extends StatefulWidget {
  final pb.Actor actor;
  const EditProfileScreen({super.key, required this.actor});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final _nameCtrl = TextEditingController(text: widget.actor.displayName);
  late final _bioCtrl = TextEditingController(text: widget.actor.bio);
  final _picker = ImagePicker();

  File? _avatarFile;
  File? _bannerFile;
  bool _saving = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _bioCtrl.dispose();
    super.dispose();
  }

  Future<File?> _pickImage() async {
    final x = await _picker.pickImage(source: ImageSource.gallery);
    if (x == null) return null;
    final mime = x.mimeType ?? mimeFromPath(x.path);
    if (mime == null || isVideoMime(mime)) {
      if (mounted) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Elige una imagen')));
      }
      return null;
    }
    return File(x.path);
  }

  Future<String> _upload(File file) async {
    final mime = mimeFromPath(file.path) ?? 'image/jpeg';
    final r = await context.read<AppSession>().uploadMedia(file, mime);
    return r.mediaId;
  }

  Future<void> _save() async {
    if (_saving) return;
    setState(() => _saving = true);
    final session = context.read<AppSession>();
    try {
      final avatarId = _avatarFile != null ? await _upload(_avatarFile!) : '';
      final bannerId = _bannerFile != null ? await _upload(_bannerFile!) : '';
      final updated = await session.updateProfile(
        _nameCtrl.text,
        _bioCtrl.text,
        avatarMediaId: avatarId,
        bannerMediaId: bannerId,
      );
      if (mounted) Navigator.of(context).pop(updated);
    } catch (e) {
      if (mounted) {
        setState(() => _saving = false);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final a = widget.actor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar perfil'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FilledButton(
              onPressed: _saving ? null : _save,
              child: _saving
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white),
                    )
                  : const Text('Guardar'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // Banner con overlay de cámara.
          GestureDetector(
            onTap: () async {
              final f = await _pickImage();
              if (f != null) setState(() => _bannerFile = f);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: _bannerFile != null
                      ? Image.file(_bannerFile!, fit: BoxFit.cover)
                      : a.bannerUrl.isNotEmpty
                          ? Image.network(a.bannerUrl, fit: BoxFit.cover)
                          : Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [kBuzzBlue, Color(0xFF59B9FF)]),
                              ),
                            ),
                ),
                const CircleAvatar(
                  backgroundColor: Colors.black45,
                  child: Icon(Icons.photo_camera, color: Colors.white, size: 20),
                ),
              ],
            ),
          ),
          // Avatar con overlay de cámara.
          Transform.translate(
            offset: const Offset(0, -30),
            child: Center(
              child: GestureDetector(
                onTap: () async {
                  final f = await _pickImage();
                  if (f != null) setState(() => _avatarFile = f);
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.surface,
                          width: 3,
                        ),
                      ),
                      child: _avatarFile != null
                          ? ClipOval(
                              child: Image.file(_avatarFile!,
                                  width: 72, height: 72, fit: BoxFit.cover),
                            )
                          : BuzzAvatar(
                              handle: a.handle,
                              displayName: a.displayName,
                              avatarUrl: a.avatarUrl,
                              radius: 36,
                            ),
                    ),
                    const CircleAvatar(
                      radius: 14,
                      backgroundColor: Colors.black45,
                      child:
                          Icon(Icons.photo_camera, color: Colors.white, size: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                TextField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                ),
                const SizedBox(height: 14),
                TextField(
                  controller: _bioCtrl,
                  maxLines: 3,
                  maxLength: 280,
                  decoration: const InputDecoration(labelText: 'Bio'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
