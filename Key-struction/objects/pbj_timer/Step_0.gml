/// @description Insert description here
// You can write your code in this editor

timer -= 1;

if ( timer == 0 ){
	
	show_message("Time's up");
	timer = room_speed * 5 ;
}