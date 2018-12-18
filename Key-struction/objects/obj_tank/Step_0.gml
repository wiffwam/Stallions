/// @description Insert description here
// You can write your code in this editor
if(move){
	move_towards_point(600,600,1);
}

if(distance_to_point(600,600) <5){
	move = false;
	speed = 0;
	sprite_index = spr_tankturret;
	if(alarm[0]==-1){
		image_speed = 50;
		sprite_index = spr_tankstationary;
		
	}
}


if(global.bullet == false && keyboard_check_pressed(vk_anykey)){

	var inst = instance_create_layer(x,y,"Instances_3",obj_bullet);
	inst.direction = 155 ;
	count = 1;

}