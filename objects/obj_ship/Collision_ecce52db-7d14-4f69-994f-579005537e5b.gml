/// @description 충돌
lives -= 1;

instance_destroy();
createDebris(10);

with (game) {
	alarm[1] = room_speed;
}