/*if (global.showsmoke == true && image_alpha == 0){
	image_alpha = 1;
	//instance_create(x,y, obj_smoke);
	
	if (image_speed > 0)
	{
		if (image_index > 8){
			instance_destroy();
			image_alpha = 0;
			image_speed = 0;
			global.showsmoke = false;
		} 
	}
 }*/
 
 time1 += 1;  
if (time1 > (room_speed * 2)) {  
    instance_destroy();  
}  
