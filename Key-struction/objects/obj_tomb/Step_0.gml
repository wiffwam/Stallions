if(move){
	move_towards_point(500,500,3);
}
if(distance_to_point(500,510) <5){
	move = false;
	speed = 0;
}