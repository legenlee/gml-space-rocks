/// @description Insert description here
// You can write your code in this editor

if(audio_is_playing(mus_song)) {
	audio_stop_sound(mus_song);
}

room_restart();