package dev.xsoulspace.ok_auth

import android.app.Activity
import android.content.Context
import android.content.Intent
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import org.json.JSONException
import org.json.JSONObject
import ru.ok.android.sdk.ContextOkListener
import ru.ok.android.sdk.Odnoklassniki
import ru.ok.android.sdk.OkListener
import ru.ok.android.sdk.util.OkAuthType
import ru.ok.android.sdk.util.OkScope

/** OkAuthPlugin */
class OkAuthPlugin : FlutterPlugin, MethodCallHandler, PluginRegistry.ActivityResultListener,
    ActivityAware {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    internal var methodChannelResult: MethodChannel.Result? = null
    private lateinit var ok: Odnoklassniki
    private var activity: Activity? = null


    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "ok_auth")
        channel.setMethodCallHandler(this)
        val context = flutterPluginBinding.applicationContext;
        ok = Odnoklassniki(
            context,
            getResourceFromContext(context, "ok_sdk_app_id"),
            getResourceFromContext(context, "ok_sdk_app_key"),
        );

    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        if (call.method == "login") {
            methodChannelResult = result
            ok.requestAuthorization(
                activity!!,
                getResourceFromContext(activity!!.applicationContext, "ok_redirect_url"),
                OkAuthType.ANY,
                OkScope.VALUABLE_ACCESS
            )

            // result.success("Android ${android.os.Build.VERSION.RELEASE}")
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    private fun getResourceFromContext(context: Context, resName: String): String {
        val stringRes = context.resources.getIdentifier(resName, "string", context.packageName)
        if (stringRes == 0) {
            throw IllegalArgumentException(
                String.format(
                    "The 'R.strings.%s' value it's not defined in your project's resources file.",
                    resName
                )
            )
        }
        return context.getString(stringRes)
    }


    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        val context = activity?.applicationContext;

        if (::ok.isInitialized && ok.isActivityRequestOAuth(requestCode) && context != null) {
            fun onError(error: String?) {
                methodChannelResult?.error("error", "OK login error", error)
            }

            fun onCancel(error: String?) {
                methodChannelResult?.error("cancel", "OK cancelled", error)
            }

            // process OAUTH sign-in response
            return ok.onAuthActivityResult(
                requestCode,
                resultCode,
                data,
                ContextOkListener(context,
                    onSuccess = { _, json ->
                        try {
                            val token = json.getString("access_token")
                            val secretKey = json.getString("session_secret_key")
                            val expiresIn = json.getString("expires_in")

                            val hashmap = HashMap<String, String>()
                            hashmap["access_token"] = token
                            hashmap["session_secret_key"] = secretKey
                            hashmap["expires_in"] = expiresIn

                            methodChannelResult?.success(hashmap)
                        } catch (exception: JSONException) {
                            onError(exception.localizedMessage)
                        }
                    },
                    onError = { _, err -> onError(err) },
                    onCancel = { _, err -> onCancel(err) }
                ),
            )
        }
        return false
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null;
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {
        activity = null;
    }
}
