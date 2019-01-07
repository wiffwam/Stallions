

if (index < string_length(sentence)){
	index++;
	//randomize();
	
	var interval = random_range(0.08,0.15);
	alarm[0] = room_speed * interval;
}
 else {
	alarm[1] = room_speed *2;
 }