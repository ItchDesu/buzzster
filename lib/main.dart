// main.dart — Buzzster: Bluesky-style social client over BTProto/BTDLib.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/local_notifs.dart';
import 'state/session.dart';
import 'ui/screens/home_shell.dart';
import 'ui/screens/login_screen.dart';
import 'ui/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotifs.init();
  final session = AppSession();
  session.tryRestore();
  runApp(BuzzsterApp(session: session));
}

class BuzzsterApp extends StatelessWidget {
  final AppSession session;
  const BuzzsterApp({super.key, required this.session});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: session,
      child: MaterialApp(
        title: 'Buzzster',
        debugShowCheckedModeBanner: false,
        theme: buzzsterTheme(Brightness.light),
        darkTheme: buzzsterTheme(Brightness.dark),
        home: const _AuthGate(),
      ),
    );
  }
}

class _AuthGate extends StatelessWidget {
  const _AuthGate();

  @override
  Widget build(BuildContext context) {
    final session = context.watch<AppSession>();
    if (session.restoring) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 72, color: kBuzzBlue),
              SizedBox(height: 16),
              CircularProgressIndicator(),
            ],
          ),
        ),
      );
    }
    return session.loggedIn ? const HomeShell() : const LoginScreen();
  }
}
