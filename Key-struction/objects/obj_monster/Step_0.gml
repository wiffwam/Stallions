
if(health>0){
if(sprite_index == spr_monsterrunning 
|| sprite_index = spr_monsterdead 
|| sprite_index = spr_monsterdying 
|| sprite_index == spr_monster_hurt 
|| sprite_index == spr_monstertransitiontoidle 
|| sprite_index == spr_monster_attack
|| sprite_index == spr_gamemonsteridle){
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


if( global.correctCount >= global.charCorrectGoal && health !=0){
	
	scr_attack();
	
	if (image_index > 8){
		attacked = true;
		attacking = true;
	}


if (attacked == true && attacking == true){
	scr_normal();
	global.correctCount = 0;
	attacked = false;
	attacking = false;
}

}




}



