/// @description Insert description here
// You can write your code in this editor

var move = 0;

move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),0);

if (move != 0)
{
	mpos += move;
	if (mpos < 0) mpos = array_length_1d(menu) - 1;
	if (mpos > array_length_1d(menu) - 1) mpos = 0;
	audio_play_sound(sfx_tankshooting,1,false);
	
}

var push;
push = max(keyboard_check_released(vk_enter), 0);

if (push == 1) scr_menu();

