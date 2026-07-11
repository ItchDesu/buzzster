// time.dart — compact relative timestamps ("ahora", "5m", "3h", "2d").

import 'package:fixnum/fixnum.dart';

String relativeTime(Int64 epochSecs) {
  final then = DateTime.fromMillisecondsSinceEpoch(epochSecs.toInt() * 1000);
  final diff = DateTime.now().difference(then);
  if (diff.inSeconds < 60) return 'ahora';
  if (diff.inMinutes < 60) return '${diff.inMinutes}m';
  if (diff.inHours < 24) return '${diff.inHours}h';
  if (diff.inDays < 7) return '${diff.inDays}d';
  return '${then.day}/${then.month}/${then.year % 100}';
}
