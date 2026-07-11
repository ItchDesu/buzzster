// verified_badge.dart — la marca de verificación azul.

import 'package:flutter/material.dart';

import '../theme.dart';

class VerifiedBadge extends StatelessWidget {
  final double size;
  const VerifiedBadge({super.key, this.size = 15});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
      child: Icon(Icons.verified, size: size, color: kBuzzBlue),
    );
  }
}

/// Nombre + badge en una sola fila compacta.
class NameWithBadge extends StatelessWidget {
  final String name;
  final bool verified;
  final TextStyle? style;
  final double badgeSize;

  const NameWithBadge({
    super.key,
    required this.name,
    required this.verified,
    this.style,
    this.badgeSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: style ?? const TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        if (verified) VerifiedBadge(size: badgeSize),
      ],
    );
  }
}
