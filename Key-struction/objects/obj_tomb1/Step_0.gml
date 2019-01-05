if(move){
	move_towards_point(400,500,3);
}
if(distance_to_point(400,510) <5){
	move = false;
	speed = 0;
}