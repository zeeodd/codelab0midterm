/// @description Step for gembreak

// Play the sound ONLY once
if (gembreaksfx) {
	audio_play_sound(snd_gembreak, 2, false);
	gembreaksfx = false;
}