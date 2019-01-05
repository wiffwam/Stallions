/// @description Insert description here
// You can write your code in this editor

var move = 0;

move -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")),0);

if(!audio_is_playing(sfx_monsterdying)){
  if(!audio_is_playing(mus_gameover))
      audio_play_sound(mus_gameover,1,true);
}



if (move != 0)
{
	GOmpos += move;
	if (GOmpos < 0) GOmpos = array_length_1d(GOmenu) - 1;
	if (GOmpos > array_length_1d(GOmenu) - 1) GOmpos = 0;
	
}

var push;
push = max(keyboard_check_released(vk_enter), 0);

if (push == 1) scr_game_over_menu();

