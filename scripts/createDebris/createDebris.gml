/// @description createDebris(count);
/// @param count

repeat(argument[0]) {
	instance_create_layer(x, y, "Instances", obj_debris);
}

audio_play_sound(efx_die, 0, false);