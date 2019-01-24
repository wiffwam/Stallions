
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
		global.moving = false;
		global.timer = true;
	}
}

if(score >0 && health > 0){

if(global.valid_key ==1){
if(global.bullet == false && keyboard_check_pressed(vk_anykey)){

	var inst = instance_create_layer(x,y,"Instances_3",obj_bullet);
	audio_play_sound(sfx_tankshooting,1,false);
	inst.direction = 155 ;
	count = 1;
}

}
}

