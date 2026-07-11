// security_screen.dart — passkeys y verificación en dos pasos (TOTP).

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../proto/btdlib.pb.dart' as pb;
import '../../state/session.dart';
import '../../util/time.dart';
import '../theme.dart';
import 'moderation_screen.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  pb.SecurityStatusResult? _status;
  String? _error;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final s = await context.read<AppSession>().securityStatus();
      if (mounted) {
        setState(() {
          _status = s;
          _error = null;
        });
      }
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  void _toast(String msg) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
    }
  }

  // ── Passkeys ────────────────────────────────────────────────────────────────

  Future<void> _addPasskey() async {
    final session = context.read<AppSession>();
    final err = await session.enrollPasskey(
      deviceName: 'Móvil de ${session.me?.displayName ?? "usuario"}',
    );
    if (err != null) {
      _toast(err);
    } else {
      _toast('Passkey creada 🔐');
      await _load();
    }
  }

  Future<void> _deletePasskey(pb.Passkey pk) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('¿Eliminar passkey?'),
        content: Text('Ya no podrás iniciar sesión con "${pk.deviceName}".'),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancelar')),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Eliminar'),
          ),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await context.read<AppSession>().deletePasskey(pk.credentialId);
      _toast('Passkey eliminada');
      await _load();
    } catch (e) {
      _toast('$e');
    }
  }

  // ── TOTP ────────────────────────────────────────────────────────────────────

  Future<void> _enableTotp() async {
    final session = context.read<AppSession>();
    try {
      final (secret, uri) = await session.totpEnrollBegin();
      if (!mounted) return;
      final recovery = await showModalBottomSheet<List<String>>(
        context: context,
        isScrollControlled: true,
        useSafeArea: true,
        builder: (_) => _TotpEnrollSheet(secret: secret, otpauthUri: uri),
      );
      if (recovery != null && recovery.isNotEmpty && mounted) {
        await _showRecoveryCodes(recovery);
        await _load();
      }
    } catch (e) {
      _toast('$e');
    }
  }

  Future<void> _showRecoveryCodes(List<String> codes) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Códigos de recuperación'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Guárdalos en un lugar seguro. Cada uno sirve una sola vez si '
              'pierdes acceso a tu app de autenticación.',
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                codes.join('\n'),
                style: const TextStyle(fontFamily: 'monospace', height: 1.6),
              ),
            ),
          ],
        ),
        actions: [
          TextButton.icon(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: codes.join('\n')));
              _toast('Copiados al portapapeles');
            },
            icon: const Icon(Icons.copy, size: 18),
            label: const Text('Copiar'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Ya los guardé'),
          ),
        ],
      ),
    );
  }

  Future<void> _disableTotp() async {
    final codeCtrl = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Desactivar 2FA'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Introduce un código de tu app para confirmar.'),
            const SizedBox(height: 12),
            TextField(
              controller: codeCtrl,
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: const InputDecoration(labelText: 'Código'),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: const Text('Desactivar')),
        ],
      ),
    );
    if (ok != true) return;
    try {
      await context.read<AppSession>().totpDisable(codeCtrl.text.trim());
      _toast('Verificación en dos pasos desactivada');
      await _load();
    } catch (e) {
      _toast('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = _status;
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);

    return Scaffold(
      appBar: AppBar(title: const Text('Seguridad')),
      body: _error != null
          ? Center(child: Text(_error!))
          : s == null
              ? const Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  onRefresh: _load,
                  child: ListView(
                    children: [
                      // ── 2FA ──────────────────────────────────────────────
                      const _SectionHeader('Verificación en dos pasos'),
                      SwitchListTile(
                        secondary: Icon(
                          s.totpEnabled ? Icons.shield : Icons.shield_outlined,
                          color: s.totpEnabled ? kRepostGreen : muted,
                        ),
                        title: const Text('Autenticación TOTP'),
                        subtitle: Text(
                          s.totpEnabled
                              ? 'Activada · ${s.recoveryRemaining} códigos de recuperación'
                              : 'Protege tu cuenta con Google Authenticator, Aegis…',
                          style: TextStyle(color: muted, fontSize: 13),
                        ),
                        value: s.totpEnabled,
                        onChanged: (v) => v ? _enableTotp() : _disableTotp(),
                      ),

                      const Divider(),
                      // ── Passkeys ────────────────────────────────────────
                      const _SectionHeader('Passkeys'),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                        child: Text(
                          'Inicia sesión sin contraseña con tu huella o cara. '
                          'Se sincronizan de forma segura con tu gestor de '
                          'contraseñas (Google Password Manager).',
                          style: TextStyle(color: muted, fontSize: 13),
                        ),
                      ),
                      for (final pk in s.passkeys)
                        ListTile(
                          leading: const Icon(Icons.key, color: kBuzzBlue),
                          title: Text(pk.deviceName),
                          subtitle: Text(
                            'Creada ${relativeTime(pk.createdAt)}'
                            '${pk.lastUsedAt.toInt() > 0 ? ' · usada ${relativeTime(pk.lastUsedAt)}' : ''}',
                            style: TextStyle(color: muted, fontSize: 12.5),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () => _deletePasskey(pk),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: OutlinedButton.icon(
                          onPressed: _addPasskey,
                          icon: const Icon(Icons.fingerprint),
                          label: const Text('Crear una passkey'),
                        ),
                      ),

                      const Divider(),
                      const _SectionHeader('Privacidad'),
                      ListTile(
                        leading: const Icon(Icons.block, color: kBuzzBlue),
                        title: const Text('Silenciados y bloqueados'),
                        subtitle: Text('Gestiona las cuentas que has moderado',
                            style: TextStyle(color: muted, fontSize: 13)),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (_) => const ModerationScreen()),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String text;
  const _SectionHeader(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
      ),
    );
  }
}

/// Hoja de configuración de TOTP: QR + secreto + confirmación con código.
class _TotpEnrollSheet extends StatefulWidget {
  final String secret;
  final String otpauthUri;
  const _TotpEnrollSheet({required this.secret, required this.otpauthUri});

  @override
  State<_TotpEnrollSheet> createState() => _TotpEnrollSheetState();
}

class _TotpEnrollSheetState extends State<_TotpEnrollSheet> {
  final _codeCtrl = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _codeCtrl.dispose();
    super.dispose();
  }

  Future<void> _confirm() async {
    final code = _codeCtrl.text.trim();
    if (code.length < 6) {
      setState(() => _error = 'introduce el código de 6 dígitos');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final recovery = await context.read<AppSession>().totpEnrollFinish(code);
      if (mounted) Navigator.pop(context, recovery);
    } catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = '$e';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final muted = Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.55);
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Configura la verificación en dos pasos',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 6),
              Text(
                'Escanea este código con Google Authenticator, Aegis o 1Password.',
                textAlign: TextAlign.center,
                style: TextStyle(color: muted, fontSize: 13),
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: QrImageView(
                    data: widget.otpauthUri,
                    size: 200,
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text('O introduce la clave manualmente:',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: muted, fontSize: 12.5)),
              const SizedBox(height: 4),
              SelectableText(
                widget.secret,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'monospace', fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _codeCtrl,
                keyboardType: TextInputType.number,
                autofocus: true,
                maxLength: 6,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22, letterSpacing: 8),
                decoration: const InputDecoration(
                  counterText: '',
                  hintText: '000000',
                ),
                onSubmitted: (_) => _confirm(),
              ),
              if (_error != null) ...[
                const SizedBox(height: 8),
                Text(_error!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red)),
              ],
              const SizedBox(height: 12),
              FilledButton(
                onPressed: _busy ? null : _confirm,
                child: _busy
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white),
                      )
                    : const Text('Activar'),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
