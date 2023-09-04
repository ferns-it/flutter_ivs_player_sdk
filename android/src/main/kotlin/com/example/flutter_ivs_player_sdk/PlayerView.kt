package com.example.flutter_ivs_player_sdk

import android.app.Activity
import android.content.Context
import android.net.Uri
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.Toast
import androidx.constraintlayout.widget.ConstraintLayout
import com.amazonaws.ivs.player.Cue
import com.amazonaws.ivs.player.Player
import com.amazonaws.ivs.player.PlayerException
import com.amazonaws.ivs.player.PlayerView
import com.amazonaws.ivs.player.Quality
import com.amazonaws.ivs.player.ResizeMode
import com.amazonaws.ivs.player.TextMetadataCue
import com.example.flutter_ivs_player_plugin.databinding.IvsPlayerViewActivityBinding
import io.flutter.plugin.platform.PlatformView


private const val TAG = "Flutter_IVS_Plugin"

internal class PlayerView(
    private val context: Context,
    private val activity: Activity,
    id: Int,
    private val creationParams: Map<*, *>?
) : PlatformView {

    private var constrainedLayout: ConstraintLayout
    private var binding: IvsPlayerViewActivityBinding? = null
    private lateinit var playerView: PlayerView


    private val playerListener = object : Player.Listener() {
        override fun onAnalyticsEvent(p0: String, p1: String) {}
        override fun onCue(cue: Cue) {
            when (cue) {
                is TextMetadataCue -> Log.i(
                    TAG,
                    "Received Text Metadata: ${cue.text}"
                )
            }
        }

        override fun onDurationChanged(duration: Long) {
            Log.i(TAG, "New duration: $duration")
            playerView.player.seekTo(duration)
        }

        override fun onStateChanged(state: Player.State) {
            activity.runOnUiThread {
                Player.State.READY
                FlutterIvsPlayerSdk.eventSink?.success(state.name)
            }
        }

        override fun onError(error: PlayerException) {
            Log.d(TAG, "Exception: ${error.errorMessage}")
        }

        override fun onRebuffering() {}

        override fun onSeekCompleted(duration: Long) {}

        override fun onVideoSizeChanged(p0: Int, p1: Int) {}

        override fun onQualityChanged(quality: Quality) {}

    }


    override fun getView(): View {
        return constrainedLayout
    }

    private fun Context.toast(message: CharSequence) =
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()


    init {
        val inflater = LayoutInflater.from(context)
        binding = IvsPlayerViewActivityBinding.inflate(inflater)
        playerView = binding!!.playerView
        loadPlaybackUrl();
        constrainedLayout = binding!!.root;

    }

    /**
     *  load Playback URL
     */
    private fun loadPlaybackUrl() {
        val playbackUrl = creationParams?.get("playbackUrl") as? String
        if (playbackUrl != null) {
            // Load Uri to play
            playerView.resizeMode = ResizeMode.FILL;
            playerView.controlsEnabled = true;

            playerView.player.apply {
                load(Uri.parse(playbackUrl))
                addListener(playerListener);
                play()
            }
        }
    }

    override fun dispose() {
        binding!!.playerView.removeAllViews();
        playerRelease();
    }


    /**
     *  Release Player instance
     */
    private fun playerRelease() {
        Log.d(TAG, "Releasing player")
        // Removes a playback state listener
        playerView.player.removeListener(playerListener);
        playerView.player.release()
    }
}
