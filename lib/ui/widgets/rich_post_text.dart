// rich_post_text.dart — post text with tappable #hashtags, @mentions y links.

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../screens/hashtag_screen.dart';
import '../screens/profile_screen.dart';
import '../theme.dart';

class RichPostText extends StatelessWidget {
  final String text;
  final double fontSize;
  const RichPostText({super.key, required this.text, this.fontSize = 15});

  @override
  Widget build(BuildContext context) {
    final base = TextStyle(
      fontSize: fontSize,
      height: 1.35,
      color: Theme.of(context).colorScheme.onSurface,
    );
    final accent = base.copyWith(color: kBuzzBlue, fontWeight: FontWeight.w600);

    return Text.rich(
      TextSpan(children: _parse(context, base, accent)),
    );
  }

  List<InlineSpan> _parse(BuildContext context, TextStyle base, TextStyle accent) {
    final spans = <InlineSpan>[];
    final buffer = StringBuffer();

    void flush() {
      if (buffer.isNotEmpty) {
        spans.add(TextSpan(text: buffer.toString(), style: base));
        buffer.clear();
      }
    }

    void addTappable(String display, VoidCallback onTap) {
      flush();
      spans.add(TextSpan(
        text: display,
        style: accent,
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ));
    }

    final words = text.split(RegExp(r'(?=\s)|(?<=\s)'));
    for (final word in words) {
      final trimmed = word.trim();
      if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
        final clean = trimmed.replaceAll(RegExp(r'[.,)\]!?;]+$'), '');
        final tail = trimmed.substring(clean.length);
        final pad = word.substring(0, word.indexOf(trimmed));
        if (pad.isNotEmpty) buffer.write(pad);
        addTappable(_shortenUrl(clean), () {
          launchUrl(Uri.parse(clean), mode: LaunchMode.externalApplication);
        });
        if (tail.isNotEmpty) buffer.write(tail);
      } else if (trimmed.length > 1 &&
          (trimmed.startsWith('#') || trimmed.startsWith('@'))) {
        final marker = trimmed[0];
        final match =
            RegExp(marker == '#' ? r'^[#]([\w]+)' : r'^[@]([\w.]+)').firstMatch(trimmed);
        if (match == null) {
          buffer.write(word);
          continue;
        }
        final token = match.group(1)!;
        final rest = trimmed.substring(match.end);
        final pad = word.substring(0, word.indexOf(trimmed));
        if (pad.isNotEmpty) buffer.write(pad);
        addTappable('$marker$token', () {
          if (marker == '#') {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => HashtagScreen(tag: token.toLowerCase())));
          } else {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => ProfileScreen(handle: token.toLowerCase())));
          }
        });
        if (rest.isNotEmpty) buffer.write(rest);
      } else {
        buffer.write(word);
      }
    }
    flush();
    return spans;
  }

  String _shortenUrl(String url) {
    var s = url.replaceFirst(RegExp(r'^https?://(www\.)?'), '');
    if (s.length > 32) s = '${s.substring(0, 32)}…';
    return s;
  }
}
