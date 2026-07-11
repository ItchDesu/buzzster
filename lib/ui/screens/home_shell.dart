// home_shell.dart — bottom navigation shell + live notification toasts.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../proto/btdlib.pbenum.dart' as pbe;
import '../../services/local_notifs.dart';
import '../../state/session.dart';
import 'conversations_screen.dart';
import 'feed_screen.dart';
import 'notifications_screen.dart';
import 'profile_screen.dart';
import 'search_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0;
  StreamSubscription<pb.Notification>? _notifSub;
  StreamSubscription<pb.UpdateDmReceived>? _dmSub;

  @override
  void initState() {
    super.initState();
    final session = context.read<AppSession>();
    _notifSub = session.liveNotifications.listen(_showToast);
    _dmSub = session.dmEvents.listen(_onDm);
    session.refreshDmUnread();
  }

  @override
  void dispose() {
    _notifSub?.cancel();
    _dmSub?.cancel();
    super.dispose();
  }

  void _onDm(pb.UpdateDmReceived dm) {
    if (dm.message.mine) return;
    final name = dm.from.displayName.isEmpty ? dm.from.handle : dm.from.displayName;
    LocalNotifs.showIfBackground(name, dm.message.text);
    if (mounted && _index != 3) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('💬 $name: ${dm.message.text}'),
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  void _showToast(pb.Notification n) {
    if (!mounted || _index == 2) return; // already looking at notifications
    final name =
        n.actor.displayName.isEmpty ? n.actor.handle : n.actor.displayName;
    final label = switch (n.kind) {
      'like' => 'le dio me gusta a tu post',
      'repost' => 'reposteó tu post',
      'follow' => 'te empezó a seguir',
      'reply' => 'respondió a tu post',
      'mention' => 'te mencionó',
      _ => n.kind,
    };
    LocalNotifs.showIfBackground('Buzzster', '$name $label');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name $label'),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final session = context.watch<AppSession>();
    final unread = session.unreadNotifications;
    final offline =
        session.connState != pbe.ConnectionState.CONNECTION_STATE_CONNECTED;

    return Scaffold(
      body: Column(
        children: [
          if (offline)
            Material(
              color: Colors.orange.shade800,
              child: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.wifi_off, size: 14, color: Colors.white),
                      SizedBox(width: 6),
                      Text('Reconectando…',
                          style: TextStyle(color: Colors.white, fontSize: 12.5)),
                    ],
                  ),
                ),
              ),
            ),
          Expanded(
            child: IndexedStack(
              index: _index,
              children: const [
                FeedScreen(),
                SearchScreen(),
                NotificationsScreen(),
                ConversationsScreen(),
                ProfileScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: [
          const NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          const NavigationDestination(
            icon: Icon(Icons.search),
            selectedIcon: Icon(Icons.saved_search),
            label: 'Buscar',
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: unread > 0,
              label: Text('$unread'),
              child: const Icon(Icons.notifications_outlined),
            ),
            selectedIcon: Badge(
              isLabelVisible: unread > 0,
              label: Text('$unread'),
              child: const Icon(Icons.notifications),
            ),
            label: 'Avisos',
          ),
          NavigationDestination(
            icon: Badge(
              isLabelVisible: session.dmUnread > 0,
              label: Text('${session.dmUnread}'),
              child: const Icon(Icons.mail_outline),
            ),
            selectedIcon: Badge(
              isLabelVisible: session.dmUnread > 0,
              label: Text('${session.dmUnread}'),
              child: const Icon(Icons.mail),
            ),
            label: 'Mensajes',
          ),
          const NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
