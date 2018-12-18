/// @description Insert description here
// You can write your code in this editor


if (myTime > 0){
	myTime = myTime - delta_time/1000000;
}
else {
	//when time its up goes here
	show_message("Time's up");
	room_goto(rm_menu);
}

showTime = ceil(myTime);