// local_notifs.dart — notificaciones del sistema Android cuando la app está
// en segundo plano (los pushes llegan por la conexión BTProto viva).

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotifs {
  static final _plugin = FlutterLocalNotificationsPlugin();
  static bool _ready = false;

  static Future<void> init() async {
    if (_ready) return;
    const settings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );
    await _plugin.initialize(settings: settings);
    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
    _ready = true;
  }

  /// Muestra una notificación solo si la app NO está en primer plano.
  static Future<void> showIfBackground(String title, String body) async {
    if (!_ready) return;
    final state = WidgetsBinding.instance.lifecycleState;
    if (state == AppLifecycleState.resumed) return;

    const details = NotificationDetails(
      android: AndroidNotificationDetails(
        'buzzster_social',
        'Actividad social',
        channelDescription: 'Notificaciones y mensajes de Buzzster',
        importance: Importance.high,
        priority: Priority.high,
      ),
    );
    await _plugin.show(
      id: DateTime.now().millisecondsSinceEpoch ~/ 1000 % 100000,
      title: title,
      body: body,
      notificationDetails: details,
    );
  }
}
