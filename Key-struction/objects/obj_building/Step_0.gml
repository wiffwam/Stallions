/// @description Insert description here
// You can write your code in this editor

if(count ==0){
ori_score = score;
count++;
show_debug_message(count);
show_debug_message(ori_score);
show_debug_message(score);
}

show_debug_message(ori_score);
if(score <=0){
	sprite_index = spr_destroyedbuilding;
}
else if (ori_score *.33 > score){
	sprite_index = spr_dmgbuilding2
}
else if (ori_score *.66 >score){
	sprite_index = spr_dmgbuilding1
}
