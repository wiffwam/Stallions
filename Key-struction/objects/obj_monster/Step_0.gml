

if(sprite_index == spr_monsterrunning || sprite_index == spr_monstertransitiontoidle || sprite_index == spr_monster_attack){
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


if( global.correctCount >= global.charCorrectGoal){
	scr_attack();
}

if(sprite_index == spr_monster_attack && image_index == 6){
	scr_normal();
	global.correctCount = 0;
}
