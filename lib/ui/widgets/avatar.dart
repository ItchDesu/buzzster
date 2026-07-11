// avatar.dart — deterministic gradient avatar with the actor's initial.

import 'package:flutter/material.dart';

const _palettes = <List<Color>>[
  [Color(0xFF1083FE), Color(0xFF59B9FF)],
  [Color(0xFF7C3AED), Color(0xFFC084FC)],
  [Color(0xFFEC4899), Color(0xFFF9A8D4)],
  [Color(0xFF10B981), Color(0xFF6EE7B7)],
  [Color(0xFFF59E0B), Color(0xFFFCD34D)],
  [Color(0xFFEF4444), Color(0xFFFCA5A5)],
  [Color(0xFF0EA5E9), Color(0xFF7DD3FC)],
  [Color(0xFF8B5CF6), Color(0xFF3B82F6)],
];

class BuzzAvatar extends StatelessWidget {
  final String handle;
  final String displayName;
  final String avatarUrl;
  final double radius;
  final bool online;
  final VoidCallback? onTap;

  const BuzzAvatar({
    super.key,
    required this.handle,
    this.displayName = '',
    this.avatarUrl = '',
    this.radius = 22,
    this.online = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = _palettes[handle.hashCode.abs() % _palettes.length];
    final letter = (displayName.isNotEmpty ? displayName : handle);
    final initial = letter.isEmpty ? '?' : letter.characters.first.toUpperCase();

    final fallback = Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        initial,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: radius * 0.9,
        ),
      ),
    );

    final avatar = avatarUrl.isEmpty
        ? fallback
        : ClipOval(
            child: SizedBox(
              width: radius * 2,
              height: radius * 2,
              child: Image.network(
                avatarUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => fallback,
              ),
            ),
          );

    final decorated = !online
        ? avatar
        : Stack(
            clipBehavior: Clip.none,
            children: [
              avatar,
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: radius * 0.55,
                  height: radius * 0.55,
                  decoration: BoxDecoration(
                    color: const Color(0xFF10B981),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.surface,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          );

    if (onTap == null) return decorated;
    return GestureDetector(onTap: onTap, child: decorated);
  }
}
