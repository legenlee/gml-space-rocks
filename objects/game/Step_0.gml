/// @description Insert description here
// You can write your code in this editor


if(room == rm_game) {
	if(score >= 1000) {
		room_goto(rm_clear);
		audio_play_sound(efx_win, 0, false);
		audio_stop_sound(mus_song);
	}
	
	if(lives <= 0) {
		room_goto(rm_gameover);
		audio_play_sound(efx_lose, 0, false);
		audio_stop_sound(mus_song);
	}
}