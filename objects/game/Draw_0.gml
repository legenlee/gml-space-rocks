/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_default);

switch (room) {
	case rm_main:
		var c = c_yellow;
		draw_set_halign(fa_center);
		
		draw_text_transformed_colour(room_width / 2, 100, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 200,
@"1000점을 획득하면 승리합니다!

화살표 위: 이동
왼쪽/오른쪽: 방향 전환
스페이스바: 발사

>>엔터 누르면 시작합니다<<");
		draw_set_halign(fa_left);
		break;
	
	case rm_game:
		draw_text(20, 20, "점수: " + string(score));
		draw_text(20, 40, "목숨: " + string(lives));
		break;
		
	case rm_clear:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_colour(room_width / 2, 200, "YOU WIN!", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width / 2, 300, "엔터를 누르면 돌아갑니다");
		draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 250, "점수: " + string(score));
		draw_text(room_width / 2, 300, "엔터를 누르면 돌아갑니다");
		draw_set_halign(fa_left);
		break;
}