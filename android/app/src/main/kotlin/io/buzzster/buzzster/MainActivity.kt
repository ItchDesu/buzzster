package io.buzzster.buzzster

import androidx.annotation.NonNull
import androidx.credentials.CreatePublicKeyCredentialRequest
import androidx.credentials.CreatePublicKeyCredentialResponse
import androidx.credentials.CredentialManager
import androidx.credentials.GetCredentialRequest
import androidx.credentials.GetPublicKeyCredentialOption
import androidx.credentials.PublicKeyCredential
import androidx.credentials.exceptions.CreateCredentialCancellationException
import androidx.credentials.exceptions.GetCredentialCancellationException
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Puente Flutter ↔ Android Credential Manager para passkeys de plataforma.
 *
 * Dos métodos:
 *   • createPasskey(requestJson)  → registrationResponseJson
 *   • getPasskey(requestJson)     → authenticationResponseJson
 *
 * El JSON de entrada lo genera el servidor (webauthn.rs); la respuesta se
 * devuelve tal cual al servidor para su verificación.
 */
class MainActivity : FlutterFragmentActivity() {
    private val channel = "io.buzzster/passkeys"
    private val scope = CoroutineScope(Dispatchers.Main)

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val credentialManager = CredentialManager.create(this)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel)
            .setMethodCallHandler { call, result ->
                val requestJson = call.argument<String>("requestJson") ?: ""
                when (call.method) {
                    "createPasskey" -> scope.launch {
                        try {
                            val request = CreatePublicKeyCredentialRequest(requestJson)
                            val response = withContext(Dispatchers.IO) {
                                credentialManager.createCredential(this@MainActivity, request)
                            }
                            val created = response as CreatePublicKeyCredentialResponse
                            result.success(created.registrationResponseJson)
                        } catch (e: CreateCredentialCancellationException) {
                            result.error("cancelled", "cancelado por el usuario", null)
                        } catch (e: Exception) {
                            result.error("create_failed", e.message, null)
                        }
                    }

                    "getPasskey" -> scope.launch {
                        try {
                            val option = GetPublicKeyCredentialOption(requestJson)
                            val request = GetCredentialRequest(listOf(option))
                            val response = withContext(Dispatchers.IO) {
                                credentialManager.getCredential(this@MainActivity, request)
                            }
                            val credential = response.credential as PublicKeyCredential
                            result.success(credential.authenticationResponseJson)
                        } catch (e: GetCredentialCancellationException) {
                            result.error("cancelled", "cancelado por el usuario", null)
                        } catch (e: Exception) {
                            result.error("get_failed", e.message, null)
                        }
                    }

                    else -> result.notImplemented()
                }
            }
    }
}
