package com.example.extension_test

import io.flutter.embedding.android.FlutterActivity
import android.content.Intent
import android.os.Bundle
import com.erikas.simple_audio.SimpleAudioService
import com.erikas.simple_audio.notificationClickedIntent


class MainActivity: FlutterActivity() {
override fun onCreate(savedInstanceState: Bundle?)
    {
        super.onCreate(savedInstanceState)

        // This line is optional. What it does is open your app when the notification
        // is clicked.
        notificationClickedIntent = Intent(applicationContext, MainActivity::class.java)
        // This line starts the SimpleAudioService which starts a foreground service
        // and creates a new media session.
        startService(Intent(applicationContext, SimpleAudioService::class.java))
    }
}
