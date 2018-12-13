/// @description Insert description here
// You can write your code in this editor
if(move){
	move_towards_point(800,550,1);
}

if(distance_to_point(800,550) <5){
	move = false;
	speed = 0;
}


if(global.bullet == false && keyboard_check_pressed(vk_anykey)){

	var inst = instance_create_layer(x,y,"Instances_1",obj_bullet);
	inst.direction = 170 ;
	count = 1;

}