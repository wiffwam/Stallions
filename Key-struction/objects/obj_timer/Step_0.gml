/// @description Insert description here
// You can write your code in this editor

if(global.timer == true){
if (myTime > 0){
	myTime = myTime - delta_time/1000000;
	global.timeused = global.time - myTime;
	
}
else {
	global.timeleft = 0;
	room_goto(rm_game_over);
}
}
showTime = ceil(myTime);