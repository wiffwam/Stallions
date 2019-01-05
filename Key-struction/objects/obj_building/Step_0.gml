/// @description Insert description here
// You can write your code in this editor

if(count ==0){
ori_score = score;
count++;
//show_debug_message(count);
//show_debug_message(ori_score);
//show_debug_message(score);
}

//show_debug_message(ori_score);
if(score <=0){
	//if(!audio_is_playing(sfx_factorydmg)){
	
	if(stage != 3){
	audio_play_sound(sfx_factorydmg,1,false);
    stage =3;
	}
	
	sprite_index = spr_destroyedbuilding;
}
else if (ori_score *.33 > score){
	if(stage != 2){
	audio_play_sound(sfx_factorydmg,1,false);
	stage = 2;
	}
	sprite_index = spr_dmgbuilding2;
}
else if (ori_score *.66 >score){
	
	if(stage != 1){
	audio_play_sound(sfx_factorydmg,1,false);
	stage =1;
	}
	sprite_index = spr_dmgbuilding1;
}
