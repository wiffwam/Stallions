/// @description Insert description here
// You can write your code in this editor

if(global.timer == true){
if (myTime > 0){
	myTime = myTime - delta_time/1000000;
}
else {
	
	room_goto(rm_game_over);
}
}
showTime = ceil(myTime);