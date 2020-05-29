/// @description 충돌

score += 10;

instance_destroy();

with (other) {
	instance_destroy();
	
	if(sprite_index != spr_small_rock) {
		repeat(2) {
			var newRock = instance_create_layer(x, y, "Instances", obj_killer);
			newRock.sprite_index = sprite_index == spr_huge_rock ? spr_med_rock : spr_small_rock;
		}
	}
	
	createDebris(10);
}