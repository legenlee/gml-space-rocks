/// @description 조작

var d = 0;

if(keyboard_check(vk_left)) {
	d = 1;
} else if(keyboard_check(vk_right)) {
	d = -1;
}

image_angle += _spin * d; 

if(keyboard_check(vk_up)) {
	motion_add(image_angle, _speed);
}

if(keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	
	audio_play_sound(efx_zap, 0, false);
}
move_wrap(true, true, sprite_width / 2);