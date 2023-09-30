package com.uyobuyo.uyobuyo_client
import io.flutter.embedding.engine.FlutterEngine
import com.yandex.mapkit.MapKitFactory
import io.flutter.embedding.android.FlutterFragmentActivity

class MainActivity : FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("1c3a0109-83ee-41f8-8bfc-b4e5d722889f")
        super.configureFlutterEngine(flutterEngine)
    }
}