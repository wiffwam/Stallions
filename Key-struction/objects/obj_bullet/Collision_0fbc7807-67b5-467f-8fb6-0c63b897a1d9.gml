/// @description Insert description here
// You can write your code in this editor
speed = 0
sprite_index=spr_explosion;

if(alarm[0] == -1){
    instance_destroy();
	alarm[0] = 100;
}

if(health <= 0){
   with(other){
	 instance_destroy();
	 var new_monster = instance_create_layer(x,y,"Instances_2",obj_monster);
	 new_monster.sprite_index = spr_monsterdying;
   }

}

