/// @description Insert description here
// You can write your code in this editorF
if(sprite_index == spr_monsterrunning || sprite_index == spr_monstertransitiontoidle){
if(move){
	move_towards_point(400,600,1);
}

if(distance_to_point(400,610) <5){
	move = false;
	speed = 0;
	sprite_index = spr_monstertransitiontoidle;
	if(alarm[0] == -1)sprite_index = spr_gamemonsteridle;
	
	
}

}
