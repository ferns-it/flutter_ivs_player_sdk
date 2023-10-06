package com.example.flutter_ivs_player_sdk

import android.annotation.SuppressLint
import android.app.Activity
import android.content.Context
import android.content.pm.ActivityInfo
import android.net.Uri
import android.os.Build
import android.util.Log
import android.view.LayoutInflater
import android.view.Surface
import android.view.View
import android.widget.Toast
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.core.content.ContextCompat
import com.amazonaws.ivs.player.Cue
import com.amazonaws.ivs.player.MediaPlayer
import com.amazonaws.ivs.player.Player
import com.amazonaws.ivs.player.PlayerException
import com.amazonaws.ivs.player.PlayerView
import com.amazonaws.ivs.player.Quality
import com.amazonaws.ivs.player.TextMetadataCue
import com.example.flutter_ivs_player_plugin.R
import com.example.flutter_ivs_player_plugin.databinding.IvsPlayerViewActivityBinding
import com.example.flutter_ivs_player_plugin.databinding.ViewPlayerControlsBinding
import io.flutter.plugin.platform.PlatformView


private const val TAG = "Flutter_IVS_Plugin"

internal class PlayerView(
    private val context: Context,
    private val activity: Activity,
    id: Int,
    private val creationParams: Map<*, *>?
) : PlatformView {

    private var player: MediaPlayer? = null
    private var constrainedLayout: ConstraintLayout
    private var binding: IvsPlayerViewActivityBinding? = null
    private var playerControlBinding: ViewPlayerControlsBinding? = null
    private lateinit var playerView: PlayerView
    private var playerListener: Player.Listener? = null


    override fun getView(): View {
        return constrainedLayout
    }

    private fun Context.toast(message: CharSequence) =
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()


    init {
        val inflater = LayoutInflater.from(context)
        binding = IvsPlayerViewActivityBinding.inflate(inflater)
        playerControlBinding = binding!!.playerControls;
        val surfaceView = binding!!.surfaceView
        playerStart(surfaceView.holder.surface)
        playerControlBinding!!.fullScreenButton.setOnClickListener() {
            toggleFullScreen()
        }

        constrainedLayout = binding!!.root;
    }


    private fun initPlayer() {
        // Media player initialization
        player = MediaPlayer(context)

    }


    @SuppressLint("SourceLockedOrientationActivity")
    private fun toggleFullScreen() {
        if (activity.requestedOrientation == ActivityInfo.SCREEN_ORIENTATION_PORTRAIT) {
            activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
            val drawable = ContextCompat.getDrawable(
                context,
                R.drawable.ic_exit_fullscreen
            )
            val fullScreenButton = playerControlBinding!!.fullScreenButtonView;
            fullScreenButton.post {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                    fullScreenButton.background = drawable
                }
            }

        } else {
            activity.requestedOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
            val drawable = ContextCompat.getDrawable(
                context,
                R.drawable.ic_fullscreen
            )
            val fullScreenButton = playerControlBinding!!.fullScreenButtonView;
            fullScreenButton.post {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                    fullScreenButton.background = drawable
                }
            }
        }
    }


    private fun playerStart(surface: Surface) {
        Log.d(TAG, "Starting player")
        initPlayer()
        updateSurface(surface)
        setPlayerListener()
        playerLoadStream()
        play()
    }

    private fun play() {
        Log.d(TAG, "Starting playback")
        // Starts or resumes playback of the stream.
        player?.play()
    }


    private fun playerLoadStream() {
        val playbackUrl = creationParams?.get("playbackUrl") as? String
        Log.d(TAG, "Loading stream URI: $playbackUrl")
        if (playbackUrl != null && player != null) {
            // Loads the specified stream
            player?.load(Uri.parse(playbackUrl))
        }
    }


    private fun setPlayerListener() {
        // Media player listener creation and initialization
        playerListener = object : Player.Listener() {
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
    }


    private fun updateSurface(surface: Surface?) {
        Log.d(TAG, "Updating player surface: $surface")
        // Sets the Surface to use for rendering video
        player?.setSurface(surface)
    }

    override fun dispose() {
        playerRelease();
    }


    /**
     *  Release Player instance
     */
    private fun playerRelease() {
        Log.d(TAG, "Releasing player")
        // Removes a playback state listener
        playerListener?.let { player?.removeListener(it) }
        // Releases the player instance
        player?.release()
        player = null
    }
}
