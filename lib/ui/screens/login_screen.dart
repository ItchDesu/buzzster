// login_screen.dart — sign in / create account, con passkey de plataforma y 2FA.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../state/session.dart';
import '../theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 2, vsync: this);

  final _handleCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _nameCtrl = TextEditingController();
  final _totpCtrl = TextEditingController();

  bool _busy = false;
  String? _error;
  bool _needsTotp = false; // el servidor pidió el segundo factor

  @override
  void dispose() {
    _tabs.dispose();
    for (final c in [_handleCtrl, _passwordCtrl, _nameCtrl, _totpCtrl]) {
      c.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    final register = _tabs.index == 1;
    final handle = _handleCtrl.text.trim().toLowerCase();
    final password = _passwordCtrl.text;
    if (handle.isEmpty || password.isEmpty) {
      setState(() => _error = 'introduce handle y contraseña');
      return;
    }
    if (_needsTotp && _totpCtrl.text.trim().isEmpty) {
      setState(() => _error = 'introduce el código de verificación');
      return;
    }

    setState(() {
      _busy = true;
      _error = null;
    });
    final session = context.read<AppSession>();
    final cfg = await session.loadServerConfig();
    if (!mounted) return;
    final err = await session.signIn(
      cfg,
      handle,
      password,
      register: register,
      displayName: _nameCtrl.text.trim(),
      totpCode: _totpCtrl.text.trim(),
    );
    if (!mounted) return;
    if (err == AppSession.totpRequired) {
      setState(() {
        _busy = false;
        _needsTotp = true;
        _error = null;
      });
    } else if (err != null) {
      setState(() {
        _busy = false;
        _error = err;
      });
    }
  }

  Future<void> _passkeyLogin() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final session = context.read<AppSession>();
    final cfg = await session.loadServerConfig();
    if (!mounted) return;
    final err = await session.loginWithPasskey(cfg);
    if (mounted && err != null) {
      setState(() {
        _busy = false;
        _error = err;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    final register = _tabs.index == 1;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 24),
                  const Icon(Icons.flutter_dash, size: 64, color: kBuzzBlue),
                  const SizedBox(height: 8),
                  const Text(
                    'Buzzster',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'La red social sobre BTProto',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: muted),
                  ),
                  const SizedBox(height: 20),
                  TabBar(
                    controller: _tabs,
                    labelColor: kBuzzBlue,
                    indicatorColor: kBuzzBlue,
                    onTap: (_) => setState(() {
                      _needsTotp = false;
                      _error = null;
                    }),
                    tabs: const [
                      Tab(text: 'Iniciar sesión'),
                      Tab(text: 'Crear cuenta'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _handleCtrl,
                    autocorrect: false,
                    enabled: !_needsTotp,
                    decoration: const InputDecoration(
                      labelText: 'Handle',
                      prefixText: '@',
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (register) ...[
                    TextField(
                      controller: _nameCtrl,
                      decoration:
                          const InputDecoration(labelText: 'Nombre (opcional)'),
                    ),
                    const SizedBox(height: 12),
                  ],
                  TextField(
                    controller: _passwordCtrl,
                    obscureText: true,
                    enabled: !_needsTotp,
                    decoration: const InputDecoration(labelText: 'Contraseña'),
                    onSubmitted: (_) => _submit(),
                  ),
                  if (_needsTotp) ...[
                    const SizedBox(height: 12),
                    TextField(
                      controller: _totpCtrl,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      maxLength: 12,
                      decoration: const InputDecoration(
                        labelText: 'Código de verificación',
                        helperText:
                            'De tu app de autenticación (o un código de recuperación)',
                        counterText: '',
                        prefixIcon: Icon(Icons.shield_outlined),
                      ),
                      onSubmitted: (_) => _submit(),
                    ),
                  ],
                  if (_error != null) ...[
                    const SizedBox(height: 12),
                    Text(_error!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.red)),
                  ],
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _busy ? null : _submit,
                    child: _busy
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white),
                          )
                        : Text(register
                            ? 'Crear cuenta'
                            : _needsTotp
                                ? 'Verificar'
                                : 'Entrar'),
                  ),
                  if (!register && !_needsTotp) ...[
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Expanded(child: Divider()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('o', style: TextStyle(color: muted)),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    const SizedBox(height: 12),
                    OutlinedButton.icon(
                      onPressed: _busy ? null : _passkeyLogin,
                      icon: const Icon(Icons.fingerprint),
                      label: const Text('Entrar con passkey'),
                    ),
                  ],
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
